.class public abstract Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

.field public final superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

.field public final superSlowMotionPlayer:Landroidx/media3/ui/PlayerView;

.field public final superSlowMotionPreviewBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final superSlowMotionPreviewTopGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final superSlowMotionProcessingBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final superSlowMotionProcessingCancelButton:Landroid/widget/Button;

.field public final superSlowMotionProcessingLabel:Landroid/widget/TextView;

.field public final superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

.field public final superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

.field public final superSlowMotionSaveButton:Landroid/widget/Button;

.field public final superSlowMotionSkipButton:Landroid/widget/Button;

.field public final superSlowMotionToast:Landroid/widget/TextView;

.field public final superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageButton;Landroidx/media3/ui/PlayerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Landroidx/databinding/ViewDataBinding;-><init>(Landroid/view/View;I)V

    iput-object p2, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayer:Landroidx/media3/ui/PlayerView;

    iput-object p4, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPreviewBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p5, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPreviewTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p6, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iput-object p7, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBottomGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p8, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    iput-object p9, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    iput-object p12, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    iput-object p13, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSkipButton:Landroid/widget/Button;

    iput-object p14, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionToast:Landroid/widget/TextView;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    return-void
.end method


# virtual methods
.method public abstract setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
.end method
