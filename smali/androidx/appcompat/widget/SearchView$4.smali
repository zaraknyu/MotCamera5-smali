.class public final Landroidx/appcompat/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/SearchView$4;->$r8$classId:I

    iput-object p2, p0, Landroidx/appcompat/widget/SearchView$4;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget p2, p0, Landroidx/appcompat/widget/SearchView$4;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->rotate(I)V

    return-void

    :pswitch_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->reset$1$1()V

    return-void

    :pswitch_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->controlPanelOpen:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->rotation:F

    invoke-virtual {p1, p3}, Landroid/view/View;->setRotation(F)V

    iget-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->needControlPanelUpdate:Z

    if-eqz p3, :cond_0

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->interceptUpdate:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->needControlPanelUpdate:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->updateRecyclerViewAsync()V

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent;->animateVisibility(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/text/Regex$$ExternalSyntheticLambda0;)V

    :cond_1
    return-void

    :pswitch_2
    const/4 p0, 0x0

    throw p0

    :pswitch_3
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$4;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/SearchView;

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    const/4 p4, 0x1

    if-le p3, p4, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object p5, p0, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p7

    const/4 p8, 0x0

    if-ne p7, p4, :cond_2

    goto :goto_0

    :cond_2
    move p4, p8

    :goto_0
    iget-boolean p0, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz p0, :cond_3

    const p0, 0x7f070029

    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const p7, 0x7f07002a

    invoke-virtual {p3, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int p8, p3, p0

    :cond_3
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz p4, :cond_4

    iget p0, p6, Landroid/graphics/Rect;->left:I

    neg-int p0, p0

    goto :goto_1

    :cond_4
    iget p0, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p8

    sub-int p0, p5, p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    iget p2, p6, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p2

    iget p2, p6, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p2

    add-int/2addr p0, p8

    sub-int/2addr p0, p5

    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
