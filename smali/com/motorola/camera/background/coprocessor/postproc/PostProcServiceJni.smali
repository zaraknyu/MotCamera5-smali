.class public final Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 Y2\u00020\u0001:\u0004YZ[\\B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J \u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0086 \u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u000cH\u0086 \u00a2\u0006\u0004\u0008\u000f\u0010\u0010J*\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0086 \u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0018\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0011H\u0086 \u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0018\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u000cH\u0086 \u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0018\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u0008H\u0086 \u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ0\u0010$\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u000c2\u0006\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020\u000cH\u0086 \u00a2\u0006\u0004\u0008$\u0010%J\u0018\u0010(\u001a\u00020\'2\u0006\u0010&\u001a\u00020\u0008H\u0086 \u00a2\u0006\u0004\u0008(\u0010)J\u0018\u0010+\u001a\u00020\'2\u0006\u0010*\u001a\u00020\u0008H\u0086 \u00a2\u0006\u0004\u0008+\u0010)J\u0018\u0010-\u001a\u00020\'2\u0006\u0010,\u001a\u00020\u0008H\u0086 \u00a2\u0006\u0004\u0008-\u0010)J\u0017\u00100\u001a\u00020\'2\u0008\u0010/\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u00080\u00101J\u0017\u00102\u001a\u00020\'2\u0008\u0010/\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u00082\u00101J\r\u00103\u001a\u00020\'\u00a2\u0006\u0004\u00083\u00104J\u0011\u00105\u001a\u0004\u0018\u00010.H\u0016\u00a2\u0006\u0004\u00085\u00106J\'\u0010;\u001a\u00020\'2\u0006\u00107\u001a\u00020\u00112\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u0013\u0010?\u001a\u00020>*\u00020=H\u0002\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010A\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008A\u00104J\u0017\u0010D\u001a\u0002082\u0006\u0010C\u001a\u00020BH\u0002\u00a2\u0006\u0004\u0008D\u0010EJ\u0019\u0010G\u001a\u00020\u00082\u0008\u0010F\u001a\u0004\u0018\u00010BH\u0002\u00a2\u0006\u0004\u0008G\u0010HR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010IR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010JR \u0010M\u001a\u000e\u0012\u0004\u0012\u00020L\u0012\u0004\u0012\u00020B0K8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008M\u0010NR\u001a\u0010P\u001a\u0008\u0012\u0004\u0012\u00020B0O8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0016\u0010R\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010JR\u0016\u0010T\u001a\u00020S8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u001c\u0010W\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010.0V8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008W\u0010X\u00a8\u0006]"
    }
    d2 = {
        "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "supportsSuspension",
        "<init>",
        "(Landroid/content/Context;Z)V",
        "",
        "product",
        "",
        "staticConfig",
        "",
        "initialize",
        "(Ljava/lang/String;[B)I",
        "deinitialize",
        "()I",
        "Lcom/motorola/camera/background/common/JobId;",
        "jobid",
        "jobDescription",
        "Lcom/motorola/camera/shared/PostProcTransferData;",
        "transferData",
        "processJob",
        "(Lcom/motorola/camera/background/common/JobId;Ljava/lang/String;Lcom/motorola/camera/shared/PostProcTransferData;)I",
        "processJobCancel",
        "(Lcom/motorola/camera/background/common/JobId;)I",
        "logdDD",
        "setLogDDFlag",
        "(I)I",
        "logAD",
        "setLogADFlag",
        "(Ljava/lang/String;)I",
        "mask0",
        "mask1",
        "mask2",
        "mask3",
        "setDebugDumpFlags",
        "(IIII)I",
        "mlModelsJson",
        "",
        "setMlModelsList",
        "(Ljava/lang/String;)V",
        "cacheDir",
        "setCacheDir",
        "filesDir",
        "setFilesDir",
        "Lcom/motorola/camera/background/common/msg/IBgMsgIntf;",
        "client",
        "addClient",
        "(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V",
        "deleteClient",
        "cleanUp",
        "()V",
        "msgIntf",
        "()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;",
        "jobId",
        "Lcom/motorola/camera/background/common/ReturnCode;",
        "returnCode",
        "resultDescription",
        "processJobComplete",
        "(Lcom/motorola/camera/background/common/JobId;Lcom/motorola/camera/background/common/ReturnCode;Ljava/lang/String;)V",
        "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;",
        "Lcom/motorola/camera/background/common/JobMetrics;",
        "asMsgJobMetrics",
        "(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;)Lcom/motorola/camera/background/common/JobMetrics;",
        "processNextJob",
        "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;",
        "job",
        "processJobRequest",
        "(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Lcom/motorola/camera/background/common/ReturnCode;",
        "jobRequest",
        "extractAppContext",
        "(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Ljava/lang/String;",
        "Landroid/content/Context;",
        "Z",
        "",
        "Lcom/motorola/camera/background/common/TaskId;",
        "processingJobsList",
        "Ljava/util/Map;",
        "Lkotlin/collections/ArrayDeque;",
        "jobsQueue",
        "Lkotlin/collections/ArrayDeque;",
        "isProcessingSuspended",
        "",
        "priorityJob",
        "J",
        "",
        "clients",
        "Ljava/util/List;",
        "Companion",
        "JobRequest",
        "JobMetrics",
        "MsgHandler",
        "MotCamera-Background_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field private static mNativeContext:J


# instance fields
.field private final clients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/camera/background/common/msg/IBgMsgIntf;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private isProcessingSuspended:Z

.field private final jobsQueue:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque;"
        }
    .end annotation
.end field

.field private priorityJob:J

.field private final processingJobsList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/background/common/TaskId;",
            "Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final supportsSuspension:Z


# direct methods
.method public static synthetic $r8$lambda$DkXsR36SH7kCV5M_Om4Zlb5A55w(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->deleteClient$lambda$0(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lGeSrXk0ZDLqCdDVewnHfPoobo8(Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->deleteClient$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->Companion:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$Companion;

    const-class v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v0, "bg-postproc-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->context:Landroid/content/Context;

    .line 2
    iput-boolean p2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->supportsSuspension:Z

    const-wide/16 p1, 0x0

    .line 3
    sput-wide p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mNativeContext:J

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processingJobsList:Ljava/util/Map;

    .line 5
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->jobsQueue:Lkotlin/collections/ArrayDeque;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic access$getIdentity$cp()Lcom/motorola/camera/background/common/RegisteredProcDef;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-object v0
.end method

.method public static final synthetic access$getJobsQueue$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Lkotlin/collections/ArrayDeque;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->jobsQueue:Lkotlin/collections/ArrayDeque;

    return-object p0
.end method

.method public static final synthetic access$getMNativeContext$cp()J
    .locals 2

    sget-wide v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mNativeContext:J

    return-wide v0
.end method

.method public static final synthetic access$getProcessingJobsList$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processingJobsList:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getSupportsSuspension$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->supportsSuspension:Z

    return p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isProcessingSuspended$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->isProcessingSuspended:Z

    return p0
.end method

.method public static final synthetic access$processJobRequest(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processJobRequest(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processNextJob(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processNextJob()V

    return-void
.end method

.method public static final synthetic access$setMNativeContext$cp(J)V
    .locals 0

    sput-wide p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->mNativeContext:J

    return-void
.end method

.method public static final synthetic access$setPriorityJob$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;J)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->priorityJob:J

    return-void
.end method

.method public static final synthetic access$setProcessingSuspended$p(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->isProcessingSuspended:Z

    return-void
.end method

.method private final asMsgJobMetrics(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;)Lcom/motorola/camera/background/common/JobMetrics;
    .locals 7

    new-instance v0, Lcom/motorola/camera/background/common/JobMetrics;

    iget-wide v1, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeAddedMs:J

    iget-wide v3, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeStartedMs:J

    iget-wide v5, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeFinishedMs:J

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/common/JobMetrics;-><init>(JJJ)V

    return-object v0
.end method

.method private static final deleteClient$lambda$0(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)Z
    .locals 0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final deleteClient$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final extractAppContext(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->msgType:Lcom/motorola/camera/background/common/msg/MsgType;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    if-ne v0, v1, :cond_3

    iget-object p0, p1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    const-string p1, "msg"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;

    invoke-virtual {v0}, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0, v0}, Lkotlinx/serialization/json/Json$Default;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    new-instance p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    iget-object v0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    iget-boolean p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->expedited:Z

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;Z)V

    iget-object p0, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    :cond_3
    return-object p0
.end method

.method private final processJobRequest(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Lcom/motorola/camera/background/common/ReturnCode;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-object v3, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->rules:Ljava/lang/String;

    sget-object v4, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v5, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;

    invoke-virtual {v5}, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v4, v3, v5}, Lkotlinx/serialization/json/Json$Default;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    new-instance v4, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    iget-object v5, v3, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    iget-object v6, v3, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    iget-object v7, v3, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    iget-boolean v3, v3, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->expedited:Z

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;Z)V

    iget-wide v3, v2, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v3, v4}, Lcom/motorola/camera/shared/PostProcTransferData;->retrievePostProcTransferDataForForegroundProcessing(J)Lcom/motorola/camera/shared/PostProcTransferData;

    move-result-object v3

    iget-object v4, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processingJobsList:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->jobMetrics:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeStartedMs:J

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    new-instance v7, Lcom/motorola/camera/background/common/JobId;

    iget v8, v2, Lcom/motorola/camera/background/common/TaskId;->clientId:I

    iget-wide v9, v2, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-wide v11, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    iget v13, v2, Lcom/motorola/camera/background/common/TaskId;->sourceId:I

    iget v14, v2, Lcom/motorola/camera/background/common/TaskId;->targetId:I

    iget v15, v2, Lcom/motorola/camera/background/common/TaskId;->priority:I

    iget-boolean v4, v2, Lcom/motorola/camera/background/common/TaskId;->useFifo:Z

    iget-object v5, v2, Lcom/motorola/camera/background/common/TaskId;->comment:Ljava/lang/String;

    move/from16 v16, v4

    move-object/from16 v17, v5

    invoke-direct/range {v7 .. v17}, Lcom/motorola/camera/background/common/JobId;-><init>(IJJIIIZLjava/lang/String;)V

    invoke-virtual {v1, v7, v6, v3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processJob(Lcom/motorola/camera/background/common/JobId;Ljava/lang/String;Lcom/motorola/camera/shared/PostProcTransferData;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/background/common/ReturnCode;->access$getMap$cp()Ljava/util/Map;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/background/common/ReturnCode;

    if-nez v0, :cond_0

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->UNKNOWN_ERROR:Lcom/motorola/camera/background/common/ReturnCode;

    :cond_0
    move-object v3, v0

    sget-object v0, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    if-eq v3, v0, :cond_1

    iget-object v0, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processingJobsList:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->context:Landroid/content/Context;

    iget-wide v4, v2, Lcom/motorola/camera/background/common/TaskId;->taskNum:J

    const-string v6, "context"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v7, "processing.job"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v6}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v4, "getBytes(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v6, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v0, "camera5.background"

    const-string v4, "Unable to write processing job to file"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v0, Lcom/motorola/camera/shared/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->TAG:Ljava/lang/String;

    iget-wide v4, v2, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-object v1, v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->jobsQueue:Lkotlin/collections/ArrayDeque;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    iget-object v6, v6, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v6, v6, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Process job request: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", queue: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v3
.end method

.method private final processNextJob()V
    .locals 9

    iget-wide v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->priorityJob:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->jobsQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    iget-object v5, v5, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->id:Lcom/motorola/camera/background/common/TaskId;

    iget-wide v5, v5, Lcom/motorola/camera/background/common/TaskId;->jobNum:J

    iget-wide v7, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->priorityJob:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    check-cast v4, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->jobsQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, v4}, Lkotlin/collections/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->jobsQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, v4}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_2
    iput-wide v2, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->priorityJob:J

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->jobsQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    check-cast v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processJobRequest(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Lcom/motorola/camera/background/common/ReturnCode;

    :cond_5
    return-void
.end method


# virtual methods
.method public final addClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final cleanUp()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processingJobsList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final native deinitialize()I
.end method

.method public final deleteClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda32;

    const/4 v1, 0x2

    invoke-direct {p1, v1, v0}, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda32;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public final native initialize(Ljava/lang/String;[B)I
.end method

.method public msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$MsgHandler;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final native processJob(Lcom/motorola/camera/background/common/JobId;Ljava/lang/String;Lcom/motorola/camera/shared/PostProcTransferData;)I
.end method

.method public final native processJobCancel(Lcom/motorola/camera/background/common/JobId;)I
.end method

.method public processJobComplete(Lcom/motorola/camera/background/common/JobId;Lcom/motorola/camera/background/common/ReturnCode;Ljava/lang/String;)V
    .locals 11

    const-string v0, "jobId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "returnCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resultDescription"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/motorola/camera/background/common/JobId;->toTaskId()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v1

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processingJobsList:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;->jobMetrics:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;->timeFinishedMs:J

    iget-object v0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->clients:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->extractAppContext(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->asMsgJobMetrics(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$JobMetrics;)Lcom/motorola/camera/background/common/JobMetrics;

    move-result-object v6

    const-string v7, "appContext"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "jobMetrics"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;

    invoke-direct {v7, v0, p3, p2, v6}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/JobMetrics;)V

    sget-object v0, Lkotlinx/serialization/json/Json$Default;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v6, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$Companion;

    invoke-virtual {v6}, Lcom/motorola/camera/background/common/msg/MsgProcessJobCompleteImage$Companion$Params$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v6, v7}, Lkotlinx/serialization/json/Json$Default;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-eqz v5, :cond_0

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget v6, v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    sget-object v9, Lcom/motorola/camera/background/common/msg/MsgType;->PROCESS_JOB_COMPLETE_IMAGE:Lcom/motorola/camera/background/common/msg/MsgType;

    invoke-virtual {p1}, Lcom/motorola/camera/background/common/JobId;->toTaskId()Lcom/motorola/camera/background/common/TaskId;

    move-result-object v8

    sget-object v7, Lcom/motorola/camera/background/common/ReturnCode;->OK:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-interface/range {v5 .. v10}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->TAG:Ljava/lang/String;

    sget-object v6, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->identity:Lcom/motorola/camera/background/common/RegisteredProcDef;

    iget-object v6, v6, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " processJobComplete() exception: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Client is not available to send message to"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->processingJobsList:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final native setCacheDir(Ljava/lang/String;)V
.end method

.method public final native setDebugDumpFlags(IIII)I
.end method

.method public final native setFilesDir(Ljava/lang/String;)V
.end method

.method public final native setLogADFlag(Ljava/lang/String;)I
.end method

.method public final native setLogDDFlag(I)I
.end method

.method public final native setMlModelsList(Ljava/lang/String;)V
.end method
