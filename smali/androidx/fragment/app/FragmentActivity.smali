.class public abstract Landroidx/fragment/app/FragmentActivity;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;


# instance fields
.field public mCreated:Z

.field public final mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final mFragments:Landroidx/fragment/app/Fragment$7;

.field public mResumed:Z

.field public mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    new-instance v1, Landroidx/fragment/app/Fragment$7;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/Fragment$7;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    iget-object v0, v0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    new-instance v1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, v2, p0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    const-string v2, "android:support:lifecycle"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    new-instance v0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;-><init>(ILandroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnConfigurationChangedListener(Landroidx/core/util/Consumer;)V

    new-instance v0, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentActivity$$ExternalSyntheticLambda1;-><init>(ILandroidx/fragment/app/FragmentActivity;)V

    iget-object v1, p0, Landroidx/activity/ComponentActivity;->onNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda4;-><init>(Landroidx/activity/ComponentActivity;I)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method

.method public static markState(Landroidx/fragment/app/FragmentManager;)Z
    .locals 7

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;)Z

    move-result v3

    or-int/2addr v1, v3

    :cond_2
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    const-string/jumbo v4, "setCurrentState"

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize()V

    iget-object v3, v3, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v1, v2, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    iget-object v1, v1, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    move v1, v5

    :cond_3
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v3, v3, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v1, v2, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    move v1, v5

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    array-length v1, p4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object v1, p4, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "--autofill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_1
    const-string v2, "--contentcapture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_2
    const-string v2, "--list-dumpables"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_3
    const-string v2, "--dump-dumpable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :sswitch_4
    const-string v2, "--translation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local FragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCreated="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mResumed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mStopped="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v2

    const-string/jumbo v3, "store"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    const-string v4, "defaultCreationExtras"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroidx/media3/extractor/text/pgs/PgsParser;

    sget-object v5, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/fragment/app/FragmentManagerViewModel$1;

    invoke-direct {v4, v2, v5, v3}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    const-class v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v5, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Landroidx/media3/extractor/text/pgs/PgsParser;->getViewModel$lifecycle_viewmodel_release(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    iget-object v2, v2, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    iget v3, v2, Landroidx/collection/SparseArrayCompat;->size:I

    if-lez v3, :cond_6

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Loaders:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v3, v2, Landroidx/collection/SparseArrayCompat;->size:I

    if-gtz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "  #"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, v2, Landroidx/collection/SparseArrayCompat;->keys:[I

    aget p0, p0, v0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment$7;->noteStateNotSaved()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iput-boolean p1, v0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    .line 8
    iget-object v0, v0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 9
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 10
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->dispatchDestroy()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    iget-object p0, p0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment$7;->noteStateNotSaved()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment$7;->noteStateNotSaved()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    iget-object p0, v0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    return-void
.end method

.method public onStart()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment$7;->noteStateNotSaved()V

    iget-object v0, v0, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iput-boolean v3, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    iget-object v2, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-boolean v1, v2, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iput-boolean v1, v2, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v4, v2, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iput-boolean v1, v4, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    :cond_0
    iget-object v2, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->execPendingActions(Z)Z

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStateSaved:Z

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment$7;->noteStateNotSaved()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/Fragment$7;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v1, v1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManager;->mStopped:Z

    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iput-boolean v0, v2, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->dispatchStateChange(I)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
