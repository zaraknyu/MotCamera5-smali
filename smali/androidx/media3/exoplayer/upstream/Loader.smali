.class public final Landroidx/media3/exoplayer/upstream/Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

.field public static final DONT_RETRY_FATAL:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;


# instance fields
.field public currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

.field public final downloadExecutor:Landroidx/media3/exoplayer/util/ReleasableExecutor$1;

.field public fatalError:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    new-instance v0, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/util/ReleasableExecutor$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/Loader;->downloadExecutor:Landroidx/media3/exoplayer/util/ReleasableExecutor$1;

    return-void
.end method


# virtual methods
.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/Loader;->currentTask:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
