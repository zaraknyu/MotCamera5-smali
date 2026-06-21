.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# instance fields
.field public controlPanelInteractions:I

.field public final eventHandler:Lcom/motorola/camera/EventListener;

.field public ignoreClicks:Z

.field public final onSettingChanged:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;

.field public final onSettingIntercept:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

.field public final settingDisabledValueListener:Ljava/util/LinkedHashMap;

.field public final settingListeners:Ljava/util/LinkedHashMap;

.field public final settingLockedListener:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/EventListener;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapterDiff;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_fold/gallery/GalleryComposeAdapterDiff;-><init>(I)V

    const-string v1, "eventHandler"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->eventHandler:Lcom/motorola/camera/EventListener;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onSettingChanged:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelCliComponent$$ExternalSyntheticLambda0;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onSettingIntercept:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingListeners:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingLockedListener:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingDisabledValueListener:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 2
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;

    .line 3
    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v1, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 7
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    .line 9
    iget-object v2, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;->itemOptionsToggleView$delegate:Ljava/lang/Object;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 10
    iget-object v5, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->icon:Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 12
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :cond_0
    new-instance v5, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;

    invoke-direct {v5, v1, p0, v3, v4}, Lcom/motorola/camera/ui/controls_2020/ScanBarCardComponent$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_1
    iget-object p0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 15
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 16
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    .line 17
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 18
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->icon:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->contentDescription:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    :cond_3
    iget-object p0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 24
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 25
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    .line 26
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->locked:Z

    if-eqz p0, :cond_4

    .line 27
    iget-object p0, v0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 28
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 29
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    .line 30
    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->isPermanentLock:Z

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .line 31
    :goto_0
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;->controlPanelToggleLayout$delegate:Ljava/lang/Object;

    .line 32
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_6

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v4, :cond_5

    const p2, 0x7f0700b3

    goto :goto_1

    :cond_5
    const p2, 0x7f0700b4

    :goto_1
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string/jumbo p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d003f

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$LocalViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    const-string/jumbo v0, "previousList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object v3, v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object v7, v4, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    new-instance v1, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;)V

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v5, v4, Lcom/motorola/camera/settings/Setting;->mLockedListeners:Ljava/util/Set;

    monitor-enter v5

    :try_start_0
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mLockedListeners:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v6, v4, Lcom/motorola/camera/settings/Setting;->mDisabledListeners:Ljava/util/Set;

    monitor-enter v6

    :try_start_1
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mDisabledListeners:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingListeners:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingLockedListener:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingDisabledValueListener:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p2, p2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingListeners:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/SettingChangeListener;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingLockedListener:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingDisabledValueListener:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda3;

    invoke-static {p2, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    invoke-static {p2, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterLockedChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;)V

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p2

    iget-object v0, p2, Lcom/motorola/camera/settings/Setting;->mDisabledListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_4
    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mDisabledListeners:Ljava/util/Set;

    invoke-interface {p2, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_7

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_b
    return-void
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingListeners:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/SettingChangeListener;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingLockedListener:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterLockedChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda2;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->settingDisabledValueListener:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter$$ExternalSyntheticLambda3;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/settings/Setting;->mDisabledListeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mDisabledListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method
