.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;
.super Landroidx/media3/ui/PlayerView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0012\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;",
        "Landroidx/media3/ui/PlayerView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "setArtwork",
        "(Landroid/graphics/Bitmap;)V",
        "Landroid/widget/ImageView;",
        "playButton",
        "setPlayButton",
        "(Landroid/widget/ImageView;)V",
        "Landroidx/media3/common/Player$Listener;",
        "playerListener",
        "Landroidx/media3/common/Player$Listener;",
        "getPlayerListener",
        "()Landroidx/media3/common/Player$Listener;",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public mediaId:J

.field public mediaUri:Landroid/net/Uri;

.field public playButton:Landroid/widget/ImageView;

.field public playbackState:I

.field public final playerListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView$playerListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaId:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playbackState:I

    new-instance p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView$playerListener$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView$playerListener$1;-><init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playerListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView$playerListener$1;

    return-void
.end method


# virtual methods
.method public final getPlayerListener()Landroidx/media3/common/Player$Listener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playerListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView$playerListener$1;

    return-object p0
.end method

.method public final declared-synchronized pauseVideo()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaId:J

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->getPlayer(Landroid/content/Context;J)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v0, Landroidx/media3/common/BasePlayer;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized releasePlayer()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->players:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaId:J

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->getPlayer(Landroid/content/Context;J)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playerListener:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView$playerListener$1;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeListener(Landroidx/media3/common/Player$Listener;)V

    iget-wide v0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->mediaId:J

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/ExoPlayerManager;->releasePlayer(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setArtwork(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "getResources(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerView;->setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final setPlayButton(Landroid/widget/ImageView;)V
    .locals 1

    const-string/jumbo v0, "playButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playButton:Landroid/widget/ImageView;

    return-void
.end method
