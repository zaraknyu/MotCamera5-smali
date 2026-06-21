.class public Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameResult;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameRequest;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameRequestBuilder;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequestBuilder;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$AdjustColorType;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$SdkLoadType;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;,
        Lcom/anc/humansdk/fusion/HumanEffectFusionApi$ImageType;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final JNI_SONAME:Ljava/lang/String; = "AncHumanSegFigureFusion-jni"

.field static final TAG:Ljava/lang/String; = "HumanEffectFusionApi"

.field private static isSoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sPostInstance:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

.field private static sPreviewInstance:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;


# instance fields
.field protected handle:Ljava/util/concurrent/atomic/AtomicLong;

.field private mPendingLogLevel:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "HumanEffectFusionApi"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->DEBUG:Z

    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-direct {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;-><init>()V

    sput-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->sPreviewInstance:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    new-instance v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-direct {v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;-><init>()V

    sput-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->sPostInstance:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->isSoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->mPendingLogLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static getCaptureInstance()Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
    .locals 1

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->sPostInstance:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    return-object v0
.end method

.method private static getFileContent(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPreviewInstance()Lcom/anc/humansdk/fusion/HumanEffectFusionApi;
    .locals 1

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->sPreviewInstance:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    return-object v0
.end method

.method private native nativeInitHandle(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;)J
.end method

.method private native nativeProcessFrame(J[B[BIIIIII)I
.end method

.method private native nativeProcessFrameV2(J[B[BIIIIIIZ)I
.end method

.method private native nativeProcessTexture(JIIIIIZ)I
.end method

.method private native nativeProcessTextureV2(JIIIIIZZ)I
.end method

.method private native nativeRelease(J)I
.end method

.method private native nativeSdkVersion()Ljava/lang/String;
.end method

.method private native nativeSetFeatureType(JI)I
.end method

.method private native nativeSetLogLevel(I)I
.end method

.method private native nativeSetParams(JLcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;)I
.end method

.method private native nativeSetParamsArray(J[F)I
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->isSoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->nativeSdkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initByConfig(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;)I
    .locals 6

    sget-boolean v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init API by config BuildNumber: 1222 config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, " null config"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string v1, "init API by config BuildNumber: 1222"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "sdk re-init"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_9

    iget-object v4, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->model_data:[B

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->isSoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_0
    const-string v4, "AncHumanSegFigureFusion-jni"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v4, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->isSoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to link AncHumanSegFigureFusion-jni\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_2
    iget-object v0, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    const-string v4, ""

    if-nez v0, :cond_5

    iput-object v4, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    :cond_5
    iget-object v0, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    if-nez v0, :cond_6

    iput-object v4, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->mPendingLogLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    if-ltz v0, :cond_7

    sget-object v4, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string v5, "api set log level "

    invoke-static {v5, v0, v4}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    iput v0, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;->log_level:I

    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->mPendingLogLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_7
    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->nativeInitHandle(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanEffectFusionConfig;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object p0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v1

    :cond_9
    :goto_3
    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string p1, "config invalid!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public process(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameRequest;Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameResult;)I
    .locals 13

    .line 10
    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 11
    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "process: handle is invalid!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameRequest;->humanVideoFrame:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;

    iget v6, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->width:I

    .line 13
    iget v7, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->height:I

    .line 14
    iget-object v0, p2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameResult;->humanVideoFrame:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;

    iget v1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->width:I

    if-nez v1, :cond_1

    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v1

    .line 15
    :goto_0
    iget v0, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->height:I

    if-nez v0, :cond_2

    move v9, v7

    goto :goto_1

    :cond_2
    move v9, v0

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v0, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameRequest;->humanVideoFrame:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;

    iget-object v4, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->data:[B

    iget-object p2, p2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameResult;->humanVideoFrame:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;

    iget-object v5, p2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->data:[B

    iget-object p2, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->type:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$ImageType;

    .line 17
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    iget-object p2, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameRequest;->humanVideoFrame:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;

    iget v11, p2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFrame;->rotation:I

    iget-object p1, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessFrameRequest;->cameraType:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;

    sget-object p2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;->CAMERA_TYPE_REAR:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    :goto_2
    move-object v1, p0

    move v12, p1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    .line 18
    :goto_3
    invoke-direct/range {v1 .. v12}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->nativeProcessFrameV2(J[B[BIIIIIIZ)I

    move-result p0

    return p0
.end method

.method public process(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;)I
    .locals 13

    move-object v2, p2

    .line 1
    iget-object v3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 2
    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "process: handle is invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    .line 3
    :cond_0
    const-string v3, " "

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v11, v5

    goto/16 :goto_3

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;->IsValid()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;->humanVideoTexture:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;

    iget v7, v6, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->rotation:I

    iget-object v8, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;->humanVideoTexture:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;

    iget v8, v8, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->rotation:I

    if-eq v7, v8, :cond_4

    :cond_3
    move v11, v5

    goto :goto_2

    :cond_4
    move v7, v5

    .line 5
    iget v5, v6, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->width:I

    .line 6
    iget v6, v6, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->height:I

    .line 7
    iget-object v3, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    iget-object v3, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;->humanVideoTexture:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;

    iget v10, v3, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->texID:I

    iget-object v2, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;->humanVideoTexture:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;

    iget v2, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->texID:I

    move v11, v7

    iget v7, v3, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->rotation:I

    iget-boolean v3, v3, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->isOES:Z

    iget-object v1, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;->cameraType:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;

    sget-object v12, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;->CAMERA_TYPE_REAR:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$CameraType;

    if-ne v1, v12, :cond_5

    move v4, v2

    move-wide v1, v8

    move v9, v11

    :goto_0
    move-object v0, p0

    move v8, v3

    move v3, v10

    goto :goto_1

    :cond_5
    move v0, v4

    move v4, v2

    move-wide v1, v8

    move v9, v0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v9}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->nativeProcessTextureV2(JIIIIIZZ)I

    move-result v0

    return v0

    .line 8
    :goto_2
    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;->IsValid()Z

    move-result v5

    xor-int/2addr v5, v11

    iget-object v1, p1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTextureRequest;->humanVideoTexture:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;

    iget v1, v1, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->rotation:I

    iget-object v2, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanProcessTexureResult;->humanVideoTexture:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;

    iget v2, v2, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoTexture;->rotation:I

    if-eq v1, v2, :cond_6

    move v4, v11

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request : invalid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 9
    :goto_3
    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    if-nez p1, :cond_7

    move v1, v11

    goto :goto_4

    :cond_7
    move v1, v4

    :goto_4
    if-nez v2, :cond_8

    move v4, v11

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "request :empty "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", valid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method public release()I
    .locals 4

    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "release: handle is invalid!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->nativeRelease(J)I

    move-result v0

    iget-object p0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return v0
.end method

.method public setFeatureType(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;)I
    .locals 4

    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x2

    if-nez v0, :cond_0

    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setRuntimeFeature: handle is invalid!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->getValue()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$FeatureType;->getValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->nativeSetFeatureType(JI)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setRuntimeFeature: FeatureType is invalid!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setLogLevel(I)I
    .locals 3

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->isSoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "set log level "

    invoke-static {v2, p1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->mPendingLogLevel:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->nativeSetLogLevel(I)I

    return v1
.end method

.method public setParams(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;)I
    .locals 4

    if-nez p1, :cond_0

    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setParams: params is invalid!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setParams: handle is invalid!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_1
    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->nativeSetParams(JLcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;)I

    move-result p0

    return p0
.end method

.method public setParamsArray([F)I
    .locals 4

    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setParamsArray: handle is invalid!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->handle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->nativeSetParamsArray(J[F)I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setParamsArray error, paramsArray is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
