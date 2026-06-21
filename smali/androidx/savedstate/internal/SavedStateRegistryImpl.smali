.class public final Landroidx/savedstate/internal/SavedStateRegistryImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public attached:Z

.field public isAllowingSavingState:Z

.field public isRestored:Z

.field public final keyToProviders:Ljava/util/LinkedHashMap;

.field public final lock:Lcom/google/mlkit/common/internal/zzc;

.field public final onAttach:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

.field public final owner:Landroidx/savedstate/SavedStateRegistryOwner;

.field public restoredState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    iput-object p2, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->onAttach:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/google/mlkit/common/internal/zzc;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/mlkit/common/internal/zzc;-><init>(I)V

    iput-object p1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->lock:Lcom/google/mlkit/common/internal/zzc;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->keyToProviders:Ljava/util/LinkedHashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->isAllowingSavingState:Z

    return-void
.end method


# virtual methods
.method public final performAttach()V
    .locals 3

    iget-object v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->owner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->attached:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->onAttach:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;->invoke()Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/savedstate/internal/SavedStateRegistryImpl;->attached:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already attached."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
