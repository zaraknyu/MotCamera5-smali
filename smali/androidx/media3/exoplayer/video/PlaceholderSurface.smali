.class public final Landroidx/media3/exoplayer/video/PlaceholderSurface;
.super Landroid/view/Surface;
.source "SourceFile"


# static fields
.field public static secureMode:I

.field public static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field public final thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

.field public threadReleased:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    iput-boolean p3, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    return-void
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .locals 7

    const-class v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureModeInitialized:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x1a

    if-ge v1, v4, :cond_1

    const-string/jumbo v5, "samsung"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "XT1650"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v1, v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "EGL_EXT_protected_content"

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v4, 0x3055

    invoke-static {v1, v4}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "EGL_KHR_surfaceless_context"

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_0

    :cond_3
    move p0, v2

    :goto_0
    if-eqz p0, :cond_4

    move p0, v3

    goto :goto_2

    :cond_4
    const/4 p0, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    move p0, v2

    :goto_2
    sput p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I

    sput-boolean v3, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureModeInitialized:Z

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_6
    :goto_3
    sget p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_7

    move v2, v3

    :cond_7
    monitor-exit v0

    return v2

    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final release()V
    .locals 3

    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->threadReleased:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    iget-object v2, v1, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->threadReleased:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
