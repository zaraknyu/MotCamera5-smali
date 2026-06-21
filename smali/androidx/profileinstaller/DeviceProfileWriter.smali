.class public final Landroidx/profileinstaller/DeviceProfileWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# instance fields
.field public mApkName:Ljava/lang/Object;

.field public mCurProfile:Ljava/lang/Object;

.field public mDeviceSupportsAotProfile:Z

.field public mDiagnostics:Ljava/lang/Object;

.field public mProfile:Ljava/lang/Object;

.field public mTranscodedProfile:Ljava/lang/Object;


# virtual methods
.method public build()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;)V

    return-object v0
.end method

.method public doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    return-void
.end method

.method public doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V
    .locals 0

    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    return-void
.end method

.method public event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V
    .locals 0

    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    return-void
.end method

.method public fireChangeEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    return-void
.end method

.method public guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V
    .locals 0

    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    return-void
.end method

.method public loadSupplier(I)Lcom/google/common/base/Supplier;
    .locals 4

    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Supplier;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    check-cast v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    new-instance v2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/sqlite/db/SimpleSQLiteQuery;I)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized contentType: "

    invoke-static {p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3, p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p0, "androidx.media3.exoplayer.hls.HlsMediaSource$Factory"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/sqlite/db/SimpleSQLiteQuery;I)V

    goto :goto_0

    :cond_4
    const-string p0, "androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/sqlite/db/SimpleSQLiteQuery;I)V

    goto :goto_0

    :cond_5
    const-string p0, "androidx.media3.exoplayer.dash.DashMediaSource$Factory"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/sqlite/db/SimpleSQLiteQuery;I)V

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Lcom/google/android/gms/internal/base/zau;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$8;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openStreamFromAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "compressed"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DIAGNOSTIC_PROFILE_IS_COMPRESSED"

    const-string p1, "ProfileInstaller"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public result(ILjava/io/IOException;)V
    .locals 2

    new-instance v0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1, p0, p2}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->run()V

    return-void
.end method

.method public to(Lcom/motorola/camera/fsm/camera/StateKey;)V
    .locals 0

    iput-object p1, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    return-void
.end method

.method public zae(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabq;->zas(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void
.end method
