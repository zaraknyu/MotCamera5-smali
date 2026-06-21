.class public final Landroidx/preference/Preference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget v0, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/datepicker/MaterialCalendar;

    iget p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector$1(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector$1(I)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/ui/TrackSelectionView;

    iget-object v0, p0, Landroidx/media3/ui/TrackSelectionView;->overrides:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    iput-boolean v2, p0, Landroidx/media3/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3

    iput-boolean v3, p0, Landroidx/media3/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_3

    :cond_3
    iput-boolean v3, p0, Landroidx/media3/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/media3/ui/TrackSelectionView$TrackInfo;

    iget-object v4, v1, Landroidx/media3/ui/TrackSelectionView$TrackInfo;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v5, v4, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v1, v1, Landroidx/media3/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/TrackSelectionOverride;

    if-nez v6, :cond_5

    iget-boolean p1, p0, Landroidx/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-nez p1, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_4
    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    invoke-direct {p1, v5, v1}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    iget-object v6, v6, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    iget-boolean v6, p0, Landroidx/media3/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eqz v6, :cond_6

    iget-boolean v4, v4, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_1
    if-nez v4, :cond_8

    iget-boolean v6, p0, Landroidx/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroidx/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :cond_8
    :goto_2
    if-eqz p1, :cond_a

    if-eqz v2, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-direct {p1, v5, v7}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    if-nez p1, :cond_c

    if-eqz v4, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-direct {p1, v5, v7}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v1

    invoke-direct {p1, v5, v1}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/ui/TrackSelectionView;->updateViewStates()V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez p0, :cond_d

    const/4 p0, 0x0

    goto :goto_4

    :cond_d
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    :goto_4
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_e
    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/ActionMode;

    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AlertController;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v0, :cond_f

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_5

    :cond_f
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_5

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz p1, :cond_11

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_5

    :cond_11
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
