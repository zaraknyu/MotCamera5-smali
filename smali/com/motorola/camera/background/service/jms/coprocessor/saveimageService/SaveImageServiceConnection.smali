.class public final Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;
.super Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionIntf;


# instance fields
.field public bgSaveServHndl:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

.field public final context:Landroid/content/Context;

.field public final pService:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

.field public final serviceClientIntf:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;)V
    .locals 1

    const-string v0, "identity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientIdentity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/camera/background/service/jms/coprocessor/CoProcServiceConnectionBase;-><init>(Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/common/RegisteredProcDef;Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;)V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->serviceClientIntf:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    iput-object p5, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->pService:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    return-void
.end method


# virtual methods
.method public final getServiceIntf()Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isMsgTypeSupported(Lcom/motorola/camera/background/common/msg/MsgType;)Z
    .locals 1

    const-string p0, "msgType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public final start()Z
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    invoke-direct {v1, v0}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mIdentity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v2, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->type:Lcom/motorola/camera/background/common/ClientType;

    iget v3, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iget-object v0, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->pService:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;

    iget-object v5, v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->saveImgSvcHndler:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    invoke-virtual {v4, v5, v2, v3, v0}, Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl;->registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->serviceClientIntf:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    iput-object v0, v1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mServiceCallbackHandler:Lcom/motorola/camera/background/service/jms/JobMgrServiceImpl$MsgHandler;

    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->bgSaveServHndl:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final stop()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->bgSaveServHndl:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quitSafely()V

    iget-object v0, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mService:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->connectionContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->serviceConnection:Lcom/google/android/play/core/appupdate/internal/zzw;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->TAG:Ljava/lang/String;

    const-string v4, "Exception unbinding service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->isBound:Z

    iput-object v1, v0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->service:Landroid/os/Messenger;

    :cond_1
    iput-object v1, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceConnection;->bgSaveServHndl:Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    return-void
.end method
