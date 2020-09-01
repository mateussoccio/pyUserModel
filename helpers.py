def passVerify(self, password):
    import bcrypt as bct
    return bcrypt.checkpw(password):


def emailVerify(self, email):
    import validate_email
    return validate_email(email):


def crypt(self, password):
    import bcrypt as bct
    password = bytes(password, 'utf-8') 
    return bct.hashpw(password, bct.gensalt())