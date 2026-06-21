.class public final Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final listener:Ljava/lang/ref/WeakReference;

.field public final synthetic this$0:Landroidx/media3/common/util/NetworkTypeObserver;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/NetworkTypeObserver;Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->this$0:Landroidx/media3/common/util/NetworkTypeObserver;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->listener:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroidx/media3/common/util/NetworkTypeObserver$ListenerHolder;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method
