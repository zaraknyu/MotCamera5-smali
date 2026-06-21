.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$firstOut:Ljava/lang/Object;

.field public val$isPop:Z

.field public final val$lastIn:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;ZLandroidx/collection/ArrayMap;)V
    .locals 0

    const/4 p4, 0x0

    iput p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastIn:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$firstOut:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$isPop:Z

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->$r8$classId:I

    const-string/jumbo v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastIn:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$firstOut:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->$r8$classId:I

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$firstOut:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$lastIn:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$isPop:Z

    if-nez v0, :cond_0

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry;

    check-cast v1, Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$isPop:Z

    :cond_0
    return-void

    :pswitch_0
    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v0, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v1, v1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-boolean p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$6;->val$isPop:Z

    sget-object v2, Landroidx/fragment/app/FragmentTransition;->PLATFORM_IMPL:Landroidx/fragment/app/FragmentTransitionCompat21;

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Landroidx/core/app/SharedElementCallback;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
