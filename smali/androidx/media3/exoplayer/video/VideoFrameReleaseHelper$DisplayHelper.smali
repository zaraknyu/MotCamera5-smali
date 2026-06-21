.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final synthetic this$0:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->this$0:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->this$0:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->access$000(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
