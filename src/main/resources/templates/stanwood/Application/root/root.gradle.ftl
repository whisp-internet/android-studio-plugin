allprojects {
    repositories {
        google()
        jcenter()
        maven { url 'https://jitpack.io' }
        maven { url "https://kotlin.bintray.com/kotlinx" }
    }

    gradle.projectsEvaluated {
        tasks.withType(JavaCompile) {
            options.compilerArgs << "-Xmaxerrs" << "500"
        }
    }
}