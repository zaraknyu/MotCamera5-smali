.class public abstract Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IS_INITIALIZED:Z

.field public static final sMethodGetDefault:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "asInterface"

    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "getDefault"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->sMethodGetDefault:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const-string v0, "ActivityManagerNative"

    const-string/jumbo v1, "unable to initialize class"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->IS_INITIALIZED:Z

    return-void
.end method

.method public static getDefault()Lcom/motorola/camera/fsm/Fsm;
    .locals 3

    sget-boolean v0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->IS_INITIALIZED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/reflect/android/app/ActivityManagerNative;->sMethodGetDefault:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/fsm/Fsm;

    invoke-direct {v2, v0}, Lcom/motorola/camera/fsm/Fsm;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const-string v0, "ActivityManagerNative"

    const-string/jumbo v2, "unable to invoke getDefault"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method
