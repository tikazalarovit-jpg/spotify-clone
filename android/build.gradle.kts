plugins {
    id("com.android.application") version "8.0.1" apply false
    id("org.jetbrains.kotlin.android") version "1.9.10" apply false
    id("dev.flutter.flutter-gradle-plugin") version "1.0.0" apply false
}

task<Delete>("clean") {
    delete(rootProject.buildDir)
}
