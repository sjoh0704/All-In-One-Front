const { createProxyMiddleware } = require("http-proxy-middleware");
module.exports = (app) => {
    app.use(
        "/apis",
        createProxyMiddleware({
            target: process.env["REACT_APP_API_GW_URL"] || "http://api-gw.default.svc:8080",
            changeOrigin: true,
        })
    );
};