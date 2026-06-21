.class public final Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    return-void
.end method


# virtual methods
.method public final createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    new-instance v0, Lcom/motorola/camera/utility/EGLHelper;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v2, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object p1, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object p2, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object p3, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLHelper:Lcom/motorola/camera/utility/EGLHelper;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentModeSupportP3(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSupportP3:Z

    const-string v1, "PreviewSurfaceView"

    :try_start_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;Z)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    if-eq p1, v2, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    const-string p1, "Failed to create OpenGL ES surface"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget p2, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to create OpenGL ES surface,"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {p1, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->makeCurrent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method public final destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->$r8$clinit:I

    const-string p1, "PreviewSurfaceView"

    const-string p2, "Failed to destroy OpenGL ES surface"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object p2, Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;->SURFACE_VALID:Lcom/motorola/camera/ui/widgets/gl/TextureManager$Flag;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/motorola/camera/utility/Flags;->addOrRemoveIf(ZLjava/lang/Enum;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLHelper:Lcom/motorola/camera/utility/EGLHelper;

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object p3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p2, p3, :cond_1

    iget-object v0, p1, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p1, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {v0, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p3, p1, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object p2, p1, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object p2, p1, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/motorola/camera/utility/EGLHelper;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p1, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$WindowSurfaceFactory;->this$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLHelper:Lcom/motorola/camera/utility/EGLHelper;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
