.class public final synthetic Lcom/google/mlkit/vision/barcode/internal/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwo;


# instance fields
.field public zza:Ljava/lang/Object;

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public zzd:Ljava/lang/Object;

.field public zze:Ljava/lang/Object;

.field public final synthetic zzf:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzl;JLcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zza:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb:J

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzc:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzd:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zze:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzf:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzf:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb:J

    return-void
.end method

.method public static inferViewPager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected ViewPager2 instance. Got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public updateFragmentMaxLifecycle(Z)V
    .locals 12

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzf:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->fragmentList:Ljava/util/List;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragments:Landroidx/collection/LongSparseArray;

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zze:Ljava/lang/Object;

    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zze:Ljava/lang/Object;

    check-cast v4, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_3

    goto/16 :goto_6

    :cond_3
    int-to-long v4, v4

    iget-wide v6, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v2, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_6

    :cond_5
    iput-wide v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p1, v3}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-virtual {v2, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {v2, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v9, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb:J

    cmp-long v9, v6, v9

    if-eqz v9, :cond_8

    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v8, v9}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentEventDispatcher:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v9, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-static {v9}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_8
    move-object v4, v8

    :goto_1
    iget-wide v9, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_9

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    move v6, v3

    :goto_2
    invoke-virtual {v8, v6}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    if-eqz v4, :cond_c

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v4, p0}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentEventDispatcher:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_c
    :goto_4
    iget-object p0, p1, Landroidx/fragment/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    iget-boolean p0, p1, Landroidx/fragment/app/BackStackRecord;->mAddToBackStack:Z

    if-nez p0, :cond_d

    iput-boolean v3, p1, Landroidx/fragment/app/BackStackRecord;->mAllowAddToBackStack:Z

    iget-object p0, p1, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/BackStackRecord;Z)V

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$MyPageAdapter;->mFragmentEventDispatcher:Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->dispatchPostEvents(Ljava/util/List;)V

    goto :goto_5

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This transaction is already being added to the back stack"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    return-void
.end method

.method public zza()Lcom/google/common/base/Splitter;
    .locals 11

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/mlkit/vision/barcode/internal/zzl;

    iget-wide v1, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb:J

    iget-object v3, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzc:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    iget-object v4, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzd:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    iget-object v5, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zze:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzf:Ljava/lang/Object;

    check-cast p0, Lcom/google/mlkit/vision/common/InputImage;

    new-instance v6, Lcom/motorola/camera/AppFeatures;

    const/16 v7, 0xf

    invoke-direct {v6, v7}, Lcom/motorola/camera/AppFeatures;-><init>(I)V

    new-instance v7, Lcom/motorola/camera/AppFeatures;

    const/16 v8, 0xe

    invoke-direct {v7, v8}, Lcom/motorola/camera/AppFeatures;-><init>(I)V

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v7, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    iput-object v3, v7, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    sget-boolean v1, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v7, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v7, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    iput-object v1, v7, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqq;-><init>(Lcom/motorola/camera/AppFeatures;)V

    iput-object v1, v6, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    invoke-static {v1}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    move-result-object v1

    iput-object v1, v6, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    move-result-object v1

    iput-object v1, v6, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    move-result-object v1

    iput-object v1, v6, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    iget v1, p0, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    const/4 v4, 0x0

    const/16 v5, 0x23

    const v7, 0x32315659

    const/16 v8, 0x11

    if-eq v1, v8, :cond_2

    if-ne v1, v7, :cond_0

    goto :goto_0

    :cond_0
    if-eq v1, v5, :cond_1

    move p0, v4

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    throw v2

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    :goto_1
    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v9, 0x13

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(IZ)V

    if-eq v1, v3, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v7, :cond_5

    const/16 v3, 0x10

    if-eq v1, v3, :cond_4

    if-eq v1, v8, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;

    goto :goto_2

    :cond_7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqi;

    :goto_2
    iput-object v1, v2, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    const v1, 0x7fffffff

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v2, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqk;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqk;-><init>(Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    iput-object p0, v6, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/fsm/Fsm;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/fsm/Fsm;-><init>(IZ)V

    iget-boolean v0, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    :goto_3
    iput-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;-><init>(Lcom/motorola/camera/AppFeatures;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/Splitter;

    invoke-direct {v0, p0, v4}, Lcom/google/common/base/Splitter;-><init>(Lcom/motorola/camera/fsm/Fsm;I)V

    return-object v0

    :cond_9
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    throw v2
.end method
