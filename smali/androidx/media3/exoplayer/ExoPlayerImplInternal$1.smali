.class public final Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    return-void
.end method


# virtual methods
.method public final onWakeup()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
