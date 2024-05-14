import web
import pickle
import base64

urls = (
    '/', 'index',
    '/backdoor', 'backdoor'
)
web.config.debug = False
app = web.application(urls, globals())


class index:
    def GET(self):
        return "welcome to the backend!"

class backdoor:
    def POST(self):
        data = web.data()
        print(web.ctx.env)
        print(data)
        # fix this backdoor
        if b"BackdoorPasswordOnlyForAdmin" in data:
            print("yay")
            return "You are an admin!"
        else:
            print(data)
            data  = base64.b64decode(data)
            print(data)
            pickle.loads(data)
            print(index().GET())
            return "Done!"


if __name__ == "__main__":
    app.run()
