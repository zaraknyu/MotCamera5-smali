.class public final Landroidx/media3/ui/PlayerControlView$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic this$0:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerControlView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->audioTrackButton:Landroid/view/View;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedButton:Landroid/view/View;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->settingsButton:Landroid/view/View;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->nextButton:Landroid/widget/ImageView;

    const/16 v7, 0x9

    if-ne v6, p1, :cond_1

    check-cast v5, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v5, v7}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {v5}, Landroidx/media3/common/BasePlayer;->seekToNext()V

    return-void

    :cond_1
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->previousButton:Landroid/widget/ImageView;

    if-ne v6, p1, :cond_2

    check-cast v5, Landroidx/media3/common/BasePlayer;

    const/4 p0, 0x7

    invoke-virtual {v5, p0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {v5}, Landroidx/media3/common/BasePlayer;->seekToPrevious()V

    return-void

    :cond_2
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->fastForwardButton:Landroid/view/View;

    const/16 v8, 0xc

    if-ne v6, p1, :cond_3

    move-object p0, v5

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_11

    check-cast v5, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v5, v8}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_11

    move-object p0, v5

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-wide p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    invoke-virtual {v5, v8, p0, p1}, Landroidx/media3/common/BasePlayer;->seekToOffset(IJ)V

    return-void

    :cond_3
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->rewindButton:Landroid/view/View;

    if-ne v6, p1, :cond_4

    check-cast v5, Landroidx/media3/common/BasePlayer;

    const/16 p0, 0xb

    invoke-virtual {v5, p0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_11

    move-object p1, v5

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-wide v0, p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    neg-long v0, v0

    invoke-virtual {v5, p0, v0, v1}, Landroidx/media3/common/BasePlayer;->seekToOffset(IJ)V

    return-void

    :cond_4
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v6, p1, :cond_6

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlView;->showPlayButtonIfSuppressed:Z

    invoke-static {v5, p0}, Landroidx/media3/common/util/Util;->shouldShowPlayButton(Landroidx/media3/common/Player;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v5}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    return-void

    :cond_5
    check-cast v5, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v5, v10}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_11

    check-cast v5, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v5, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    return-void

    :cond_6
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleButton:Landroid/widget/ImageView;

    if-ne v6, p1, :cond_c

    const/16 p1, 0xf

    move-object v0, v5

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, p1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_11

    check-cast v5, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget p1, v5, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->repeatToggleModes:I

    move v0, v10

    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_b

    add-int v2, p1, v0

    rem-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_a

    if-eq v2, v10, :cond_8

    if-eq v2, v1, :cond_7

    goto :goto_1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_8
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    :goto_2
    move p1, v2

    :cond_b
    invoke-virtual {v5, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setRepeatMode(I)V

    return-void

    :cond_c
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->shuffleButton:Landroid/widget/ImageView;

    if-ne v6, p1, :cond_d

    const/16 p0, 0xe

    move-object p1, v5

    check-cast p1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {p1, p0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_11

    check-cast v5, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean p0, v5, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    xor-int/2addr p0, v10

    iget-object p1, v5, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v0, v5, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eq v0, p0, :cond_11

    iput-boolean p0, v5, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v0, v5, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->handler:Landroidx/media3/common/util/SystemHandlerWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->obtainSystemMessage()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v8, p0, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    invoke-virtual {v1}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->sendToTarget()V

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;-><init>(IZ)V

    invoke-virtual {p1, v7, v0}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    invoke-virtual {p1}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    return-void

    :cond_d
    if-ne v3, p1, :cond_e

    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-virtual {p0, p1, v3}, Landroidx/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void

    :cond_e
    if-ne v2, p1, :cond_f

    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->playbackSpeedAdapter:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    invoke-virtual {p0, p1, v2}, Landroidx/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void

    :cond_f
    if-ne v1, p1, :cond_10

    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->audioTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {p0, p1, v1}, Landroidx/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    return-void

    :cond_10
    if-ne v0, p1, :cond_11

    invoke-virtual {v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->textTrackSelectionAdapter:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;->displaySettingsWindow(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    :cond_11
    :goto_3
    return-void
.end method

.method public final onDismiss()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->needToHideBars:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->resetHideCallbacks()V

    :cond_0
    return-void
.end method

.method public final onEvents(Landroidx/media3/common/Player$Events;)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0xd

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v3

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$ComponentListener;->this$0:Landroidx/media3/ui/PlayerControlView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlayPauseButton()V

    :cond_0
    const/4 v3, 0x7

    filled-new-array {v0, v1, v3, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateProgress()V

    :cond_1
    const/16 v0, 0x8

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateRepeatModeButton()V

    :cond_2
    const/16 v0, 0x9

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateShuffleButton()V

    :cond_3
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateNavigation()V

    :cond_4
    const/16 v0, 0xb

    const/4 v1, 0x0

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateTimeline()V

    :cond_5
    const/16 v0, 0xc

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updatePlaybackSpeedList()V

    :cond_6
    const/4 v0, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateTrackLists()V

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data
.end method
