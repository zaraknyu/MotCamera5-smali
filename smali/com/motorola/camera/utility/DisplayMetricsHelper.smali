.class public abstract Lcom/motorola/camera/utility/DisplayMetricsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mMainDisplaySize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    :cond_1
    new-instance p0, Landroid/graphics/Point;

    iget p1, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getMainDisplayRealSize()Landroid/graphics/Point;
    .locals 2

    sget-object v0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "DisplayMetricsHelper"

    const-string v1, "Main display size not initialized yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method public static getRealSizeWithDecor(Landroid/app/Activity;Z)Landroid/graphics/Point;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-static {p0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->isWindowInDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-object p1

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p0

    if-nez p1, :cond_1

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean p1, p1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-nez p1, :cond_1

    iget p1, p0, Landroid/graphics/Point;->x:I

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-le p1, v0, :cond_1

    new-instance p1, Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    :cond_1
    return-object p0
.end method

.method public static getSize(Landroid/app/Activity;)Landroid/graphics/Point;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static isWindowInDesktopMode(Landroid/app/Activity;)Z
    .locals 4

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isInMultiWindowModeForSystemApp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "DisplayMetricsHelper"

    const-string v2, "Unable to invoke method isInMultiWindowModeForSystemApp"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :goto_0
    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static updateMainDisplaySize(Landroid/content/ContextWrapper;)V
    .locals 3

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "DisplayMetricsHelper"

    const-string/jumbo v2, "updateMainDisplaySize, wrong context being used."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    return-void
.end method
