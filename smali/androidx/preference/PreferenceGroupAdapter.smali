.class public final Landroidx/preference/PreferenceGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field public final mPreferenceResourceDescriptors:Ljava/util/ArrayList;

.field public mPreferences:Ljava/util/ArrayList;

.field public final mSyncRunnable:Landroidx/lifecycle/LiveData$1;

.field public mVisiblePreferences:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/lifecycle/LiveData$1;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Landroidx/lifecycle/LiveData$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/lifecycle/LiveData$1;

    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iput-object p0, p1, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/ArrayList;

    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iget-boolean p1, p1, Landroidx/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V

    return-void
.end method


# virtual methods
.method public final createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const v6, 0x7fffffff

    if-ge v4, v2, :cond_a

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v7

    iget-boolean v8, v7, Landroidx/preference/Preference;->mVisible:Z

    if-nez v8, :cond_0

    goto :goto_7

    :cond_0
    iget v8, p1, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    if-eq v8, v6, :cond_2

    if-ge v5, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v8, v7, Landroidx/preference/PreferenceGroup;

    if-nez v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_3
    check-cast v7, Landroidx/preference/PreferenceGroup;

    instance-of v8, v7, Landroidx/preference/PreferenceScreen;

    if-eqz v8, :cond_4

    goto :goto_7

    :cond_4
    iget v8, p1, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    if-eq v8, v6, :cond_6

    iget v8, v7, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    if-ne v8, v6, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nesting an expandable group inside of another expandable group is not supported!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    invoke-virtual {p0, v7}, Landroidx/preference/PreferenceGroupAdapter;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/preference/Preference;

    iget v9, p1, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    if-eq v9, v6, :cond_8

    if-ge v5, v9, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    iget v2, p1, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    if-eq v2, v6, :cond_13

    if-le v5, v2, :cond_13

    new-instance v2, Landroidx/preference/ExpandButton;

    iget-object v4, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    iget-wide v5, p1, Landroidx/preference/Preference;->mId:J

    const/4 v7, 0x0

    invoke-direct {v2, v4, v7}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v4, 0x7f0d006b

    iput v4, v2, Landroidx/preference/Preference;->mLayoutResId:I

    iget-object v4, v2, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v8, 0x7f08019e

    invoke-static {v4, v8}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, v2, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v10, v9, :cond_b

    iput-object v9, v2, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    iput v3, v2, Landroidx/preference/Preference;->mIconResId:I

    invoke-virtual {v2}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_b
    iput v8, v2, Landroidx/preference/Preference;->mIconResId:I

    const v3, 0x7f1201d6

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v8, v2, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    iput-object v3, v2, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_c
    iget v3, v2, Landroidx/preference/Preference;->mOrder:I

    const/16 v8, 0x3e7

    if-eq v8, v3, :cond_d

    iput v8, v2, Landroidx/preference/Preference;->mOrder:I

    iget-object v3, v2, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_d

    iget-object v8, v3, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v3, v3, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/lifecycle/LiveData$1;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v8, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/preference/Preference;

    iget-object v9, v8, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    instance-of v10, v8, Landroidx/preference/PreferenceGroup;

    if-eqz v10, :cond_f

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_f

    move-object v11, v8

    check-cast v11, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v11, v8, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    if-eqz v10, :cond_e

    check-cast v8, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    if-nez v7, :cond_11

    move-object v7, v9

    goto :goto_8

    :cond_11
    const v8, 0x7f120521

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_12
    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/32 v3, 0xf4240

    add-long/2addr v5, v3

    iput-wide v5, v2, Landroidx/preference/ExpandButton;->mId:J

    new-instance v1, Landroidx/room/concurrent/FileLock;

    invoke-direct {v1, p0, p1}, Landroidx/room/concurrent/FileLock;-><init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceGroup;)V

    iput-object v1, v2, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object v0
.end method

.method public final flattenPreferenceGroup(Ljava/util/ArrayList;Landroidx/preference/PreferenceGroup;)V
    .locals 5

    monitor-enter p2

    :try_start_0
    iget-object v0, p2, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p2, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    invoke-direct {v3, v2}, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;-><init>(Landroidx/preference/Preference;)V

    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroup;

    instance-of v4, v3, Landroidx/preference/PreferenceScreen;

    if-nez v4, :cond_1

    invoke-virtual {p0, p1, v3}, Landroidx/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/ArrayList;Landroidx/preference/PreferenceGroup;)V

    :cond_1
    iput-object p0, v2, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getItem(I)Landroidx/preference/Preference;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getId()J

    move-result-wide p0

    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p1

    new-instance v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;-><init>(Landroidx/preference/Preference;)V

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public final getPreferenceAdapterPosition(Landroidx/preference/Preference;)I
    .locals 3

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p0

    iget-object p2, p1, Landroidx/preference/PreferenceViewHolder;->mTitleTextColors:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceResourceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroidx/preference/R$styleable;->BackgroundStyle:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1080062

    invoke-static {v2, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget p0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    if-eqz p0, :cond_2

    invoke-virtual {p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    new-instance p0, Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public final updatePreferences()V
    .locals 3

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1, v0}, Landroidx/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/ArrayList;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mVisiblePreferences:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    return-void
.end method
