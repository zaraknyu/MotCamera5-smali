.class public Lcom/motorola/camera/DataBinderMapperImpl;
.super Landroidx/databinding/DataBinderMapper;
.source "SourceFile"


# static fields
.field public static final INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    const v2, 0x7f0d003a

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x7f0d0113

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collectDependencies()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;

    invoke-direct {v0}, Landroidx/databinding/library/baseAdapters/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getDataBinder(Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 12

    sget-object p0, Lcom/motorola/camera/DataBinderMapperImpl;->INTERNAL_LAYOUT_ID_LOOKUP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p2, 0x0

    if-lez p0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p0, "layout-h383dp-normal/super_slow_motion_activity_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingH383dpNormalImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingH383dpNormalImpl;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_1
    const-string p0, "layout/super_slow_motion_activity_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for super_slow_motion_activity is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "layout-h383dp-normal/cli_onboard_fragment_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-wide/16 v3, 0x1

    const v5, 0x7f0a0126

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x5

    if-eqz p0, :cond_4

    new-instance p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingH383dpNormalImpl;

    sget-object v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingH383dpNormalImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p1, v11, v0, v2}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    aget-object v0, v11, v10

    check-cast v0, Landroid/widget/Button;

    aget-object v9, v11, v9

    check-cast v9, Landroid/widget/ImageButton;

    aget-object v1, v11, v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    aget-object v1, v11, v2

    check-cast v1, Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    invoke-direct {p0, p1, v0, v9, v1}, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;-><init>(Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageButton;Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;)V

    iput-wide v7, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingH383dpNormalImpl;->mDirtyFlags:J

    aget-object v0, v11, v6

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v5, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iput-wide v3, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingH383dpNormalImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    const-string p0, "layout/cli_onboard_fragment_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;

    sget-object v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p1, v11, v0, v2}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;[Ljava/lang/Object;Landroid/util/SparseIntArray;Z)V

    aget-object v0, v11, v10

    check-cast v0, Landroid/widget/Button;

    aget-object v9, v11, v9

    check-cast v9, Landroid/widget/ImageButton;

    aget-object v1, v11, v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    aget-object v1, v11, v2

    check-cast v1, Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    invoke-direct {p0, p1, v0, v9, v1}, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;-><init>(Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageButton;Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;)V

    iput-wide v7, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;->mDirtyFlags:J

    aget-object v0, v11, v6

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v5, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    monitor-enter p0

    :try_start_2
    iput-wide v3, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-object p0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The tag for cli_onboard_fragment is invalid. Received: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "view must have a tag"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_0
    return-object p2
.end method
