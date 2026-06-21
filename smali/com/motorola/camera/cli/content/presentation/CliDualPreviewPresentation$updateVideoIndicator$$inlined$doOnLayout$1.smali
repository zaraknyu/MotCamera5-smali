.class public final Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation$updateVideoIndicator$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation$updateVideoIndicator$$inlined$doOnLayout$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation$updateVideoIndicator$$inlined$doOnLayout$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p2, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation$updateVideoIndicator$$inlined$doOnLayout$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation$updateVideoIndicator$$inlined$doOnLayout$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->updateVideoIndicatorLayout(I)V

    return-void

    :pswitch_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation$updateVideoIndicator$$inlined$doOnLayout$1;->this$0:Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    iget-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->recordingLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMinWidth(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
