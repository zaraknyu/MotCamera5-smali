.class public final Lcom/motorola/camera/utility/EGLHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mEGL10:Ljavax/microedition/khronos/egl/EGL10;

.field public mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field public mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# virtual methods
.method public final declared-synchronized createWindowSurface(Landroid/view/Surface;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;Z)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "EGLHelper"

    const-string v1, "Failed to create window surface,mEGL10:%s,mEGLConfig:%s,mEGLDisplay:%s,surface:%s"

    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v4, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    filled-new-array {v2, v3, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized destroySurface()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iput-object v1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized makeCurrent()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->makeCurrent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized swapBuffers(J)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    iget-object p1, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->TAG:Ljava/lang/String;

    const-string v1, "egl"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "display"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "surface"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const-string p2, "eglSwapBuffers"

    invoke-static {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
