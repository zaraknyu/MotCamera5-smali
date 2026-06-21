.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$awaitingContainerChanges:Ljava/lang/Object;

.field public final synthetic val$operation:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transition for operation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "has completed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-static {p0, v0}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/graphics/Rect;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$awaitingContainerChanges:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$1;->val$operation:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget p0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->_applyState(Landroid/view/View;I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
