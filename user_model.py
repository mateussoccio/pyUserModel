class UserModel:
    def __init__(self, userId = "", first_name = "", last_name = "", email = "", password = "", document = "", created_at = "", updated_at = ""):
        import mysql.connector as mdb
        self.entity = "users"
        self.id = userId
        self.first_name = first_name
        self.last_name = last_name
        self.email = email
        self.password = password
        self.document = document
        self.created_at = created_at
        self.updated_at = updated_at
        self.conn = mdb.connect(host = "localhost", user = "root", password = "", database = "python")
        self.cursor = self.conn.cursor()


    def passVerify(self, password):
        import bcrypt as bct
        return bcrypt.checkpw(password)


    def emailVerify(self, email):
        import validate_email as isMail
        return isMail.validate_email(email)


    def crypt(self, password):
        import bcrypt as bct
        password = bytes(password, 'utf-8') 
        return bct.hashpw(password, bct.gensalt())
    
    
    def findAll(self):
        query = "SELECT * FROM "+self.entity
        self.cursor.execute(query)
        userData = self.cursor.fetchall()
        users = []
        for user in userData:
            users.append(UserModel(userId = user[0], first_name=user[1], last_name=user[2], email=user[3], password=user[4], document=[5], created_at=user[6], updated_at=user[7]))
        return users


    def findById(self, userId):
        query = "SELECT * FROM "+self.entity+" WHERE id = " + str(userId)
        self.cursor.execute(query)
        userData = self.cursor.fetchone()
        self.id = userData[0]
        self.first_name = userData[1]
        self.last_name = userData[2]
        self.email = userData[3]
        self.password = userData[4]
        self.document = userData[5]
        self.created_at = userData[6]
        self.updated_at = userData[7]
    

    def findByEmail(self, userEmail):
        userEmail = "'"+str(userEmail)+"'"
        query = "SELECT * FROM "+self.entity+" WHERE email = "+userEmail
        self.cursor.execute(query)
        userData = self.cursor.fetchone()
        self.id = userData[0]
        self.first_name = userData[1]
        self.last_name = userData[2]
        self.email = userData[3]
        self.password = userData[4]
        self.document = userData[5]
        self.created_at = userData[6]
        self.updated_at = userData[7]
    
    
    def createUser(self):
        if self.emailVerify(self.email):
            query = "INSERT INTO "+self.entity+" (first_name, last_name, email, password, document) VALUES (%s, %s, %s, %s, %s)"
            val = (str(self.first_name), str(self.last_name), str(self.email), self.crypt(self.password), str(self.document))
            self.cursor.execute(query, val)
            self.conn.commit()
            print("CADASTRADO COM SUCESSO!")
        else:
            print("E-MAIL INVÁLIDO!")


    def updateUser(self):
        if self.emailVerify(self.email):
            query = "UPDATE "+self.entity+" SET first_name = %s, last_name = %s, email = %s, document = %s WHERE id = %s"
            val = (str(self.first_name), str(self.last_name), str(self.email), str(self.document), str(self.id))
            self.cursor.execute(query, val)
            self.conn.commit()
            print("ATUALIZADO COM SUCESSO!")
        else:
            print("E-MAIL INVÁLIDO!")


    def deleteUser(self):
        query = "DELETE FROM "+self.entity+" WHERE id = "+str(self.id)
        self.cursor.execute(query)
        self.conn.commit()
        print("DELETADO COM SUCESSO!")

    
    def updatePass(self):
        self.password = self.crypt(self.password)
        query = "UPDATE "+self.entity+" SET password = %s WHERE id = %s"
        val = (str(self.password), self.id)
        self.cursor.execute(query, val)
        self.conn.commit()
        print("SENHA ATUALIZADA COM SUCESSO!")