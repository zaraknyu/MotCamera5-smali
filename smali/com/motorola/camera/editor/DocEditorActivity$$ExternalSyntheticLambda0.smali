.class public final synthetic Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/editor/DocEditorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocEditorActivity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/editor/DocEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/editor/DocEditorActivity;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/motorola/camera/editor/DocEditorActivity;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->hideSystemUi$1()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mBackButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_1
    sget v0, Lcom/motorola/camera/editor/DocEditorActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mCropRectView:Lcom/motorola/camera/editor/ui/DocRectangleView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mMagnifier:Lcom/motorola/camera/editor/ui/AdjustingMagnifier;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/editor/ui/AdjustingMagnifier;->setRect(Landroid/graphics/Rect;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
