.class public final Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final actionLayoutGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public cameraData:Lcom/motorola/camera/CameraData;

.field public final constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final imageView:Landroid/widget/ImageView;

.field public isBoundInLandscape:Z

.field public isVideoUri:Z

.field public final playButton:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

.field public final topGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

.field public viewSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->this$0:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a01e8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->constraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0a01eb

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->topGuideline:Landroidx/constraintlayout/widget/Guideline;

    const p1, 0x7f0a01e7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->bottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    const p1, 0x7f0a01e6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->actionLayoutGuideline:Landroidx/constraintlayout/widget/Guideline;

    const p1, 0x7f0a01e9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->imageView:Landroid/widget/ImageView;

    const p1, 0x7f0a01ec

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->videoView:Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposePlayerView;

    const p1, 0x7f0a01ea

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapter$GalleryComposeViewHolder;->playButton:Landroid/widget/ImageView;

    return-void
.end method
