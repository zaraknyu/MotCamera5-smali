.class public final Landroidx/media3/exoplayer/util/ReleasableExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic val$executor:Ljava/util/concurrent/Executor;

.field public final synthetic val$releaseCallback:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->val$releaseCallback:Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder$Factory$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/util/ReleasableExecutor$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
