.class public final Landroidx/appcompat/widget/AppCompatSpinner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/StandardMenuPopup;

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    :cond_3
    :goto_2
    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-boolean v1, v1, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_3

    :cond_5
    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    :cond_6
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->show(II)V

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
