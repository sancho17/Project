const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot96lz5xfg/",
            name: "springboot96lz5xfg",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot96lz5xfg/front/dist/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "Sancho‘s Forum"
        } 
    }
}
export default base
