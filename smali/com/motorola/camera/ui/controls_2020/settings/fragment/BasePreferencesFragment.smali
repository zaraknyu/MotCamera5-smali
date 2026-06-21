.class public abstract Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ActivityStarter;


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public final preferenceRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->preferenceRes:I

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method


# virtual methods
.method public final disableScrollInPreference()V
    .locals 3

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;

    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    iget v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    iget-boolean v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment$CustomRecycler;->isScrollEnabled:Z

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onCreatePreferences(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object p2, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    const-string v0, "com.motorola.camera_preferences"

    iput-object v0, p2, Landroidx/preference/PreferenceManager;->mSharedPreferencesName:Ljava/io/Serializable;

    const/4 v0, 0x0

    iput-object v0, p2, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p2, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    new-instance v2, Landroidx/preference/PreferenceInflater;

    invoke-direct {v2, v0, p2}, Landroidx/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceManager;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->preferenceRes:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :try_start_0
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceInflater;->inflate(Landroid/content/res/XmlResourceParser;)Landroidx/preference/PreferenceGroup;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    check-cast v2, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V

    iget-object v0, p2, Landroidx/preference/PreferenceManager;->mEditor:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroidx/preference/PreferenceManager;->mNoCommit:Z

    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    instance-of p2, v2, Landroidx/preference/PreferenceScreen;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preference object with key "

    const-string v0, " is not a PreferenceScreen"

    invoke-static {p2, p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    check-cast v2, Landroidx/preference/PreferenceScreen;

    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object p2, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast p2, Landroidx/preference/PreferenceScreen;

    if-eq v2, p2, :cond_5

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->onDetached()V

    :cond_3
    iput-object v2, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iput-boolean v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    iget-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This should be called after super.onCreate."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-boolean p3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 p3, 0x258

    if-le p2, p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0074

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/motorola/camera/ui/controls_2020/HorizontalMarginItemDecoration;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/MutationInterruptedException;)V

    return-void
.end method

.method public startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->requestCode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
