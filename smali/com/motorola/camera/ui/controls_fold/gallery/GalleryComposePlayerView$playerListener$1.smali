.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView$playerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView$playerListener$1;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    return-void
.end method


# virtual methods
.method public final onPlaybackStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView$playerListener$1;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    iput p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playbackState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;->playButton:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method
