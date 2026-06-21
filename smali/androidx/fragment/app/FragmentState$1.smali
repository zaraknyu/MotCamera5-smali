.class public final Landroidx/fragment/app/FragmentState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/FragmentState$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    iget p0, p0, Landroidx/fragment/app/FragmentState$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_0
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->sValues:[I

    aget v3, v4, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const-class v6, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v4, :cond_1

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    iget-object v9, v9, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Landroidx/work/WorkRequest;

    check-cast v9, Landroidx/work/impl/WorkRequestHolder;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v7, v1, :cond_2

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    iget-object v4, v4, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-direct {p1, v0, v3, v5, v2}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    return-object p0

    :pswitch_1
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_2
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_5

    aget-object v7, v0, v6

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    move-object v4, v3

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    :cond_6
    new-instance p1, Landroidx/core/view/MenuHostHelper;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    iput-object v1, p1, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    if-eqz v4, :cond_7

    iput-object v4, p1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    :cond_7
    if-eqz v3, :cond_8

    iput-object v3, p1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    :cond_8
    return-object p0

    :pswitch_3
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableResult;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_4
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;-><init>(Ljava/lang/String;I)V

    return-object p0

    :pswitch_6
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_7
    const-string p0, "inParcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_8
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_9
    new-instance p0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_a
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_9

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    if-lez v0, :cond_a

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_c

    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_d

    move v1, v2

    :cond_d
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    const-class v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/ArrayList;

    return-object p0

    :pswitch_b
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_f

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    :cond_f
    return-object p0

    :pswitch_c
    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    return-object p0

    :pswitch_d
    new-instance p0, Landroidx/preference/TwoStatePreference$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_e
    new-instance p0, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_f
    new-instance p0, Landroidx/preference/PreferenceGroup$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroup$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_10
    new-instance p0, Landroidx/preference/Preference$BaseSavedState;

    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_11
    new-instance p0, Landroidx/preference/MultiSelectListPreference$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_12
    new-instance p0, Landroidx/preference/ListPreference$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_13
    new-instance p0, Landroidx/preference/EditTextPreference$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_14
    new-instance p0, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    sget-object v0, Landroidx/fragment/app/BackStackRecordState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/BackStackRecordState;

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackRecordState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStackIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStackStateKeys:Ljava/util/ArrayList;

    sget-object v0, Landroidx/fragment/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerState;->mBackStackStates:Ljava/util/ArrayList;

    sget-object v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerState;->mLaunchedFragments:Ljava/util/ArrayList;

    return-object p0

    :pswitch_15
    new-instance p0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mWho:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mRequestCode:I

    return-object p0

    :pswitch_16
    new-instance p0, Landroidx/fragment/app/BackStackState;

    invoke-direct {p0, p1}, Landroidx/fragment/app/BackStackState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_17
    new-instance p0, Landroidx/fragment/app/BackStackRecordState;

    invoke-direct {p0, p1}, Landroidx/fragment/app/BackStackRecordState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_18
    new-instance p0, Landroidx/core/widget/NestedScrollView$SavedState;

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    return-object p0

    :pswitch_19
    new-instance p0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_9

    :cond_11
    const/4 p1, 0x0

    :goto_9
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;->mShowDropdown:Z

    return-object p0

    :pswitch_1a
    const-string p0, "inParcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/activity/result/IntentSenderRequest;

    const-class v0, Landroid/content/IntentSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/content/IntentSender;

    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    return-object p0

    :pswitch_1b
    const-string/jumbo p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_12

    const/4 p1, 0x0

    goto :goto_a

    :cond_12
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    :goto_a
    invoke-direct {p0, p1, v0}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    return-object p0

    :pswitch_1c
    new-instance p0, Landroidx/fragment/app/FragmentState;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/fragment/app/FragmentState$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkInfo;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableResult;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableRemoteWorkRequest;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableData;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Landroidx/preference/TwoStatePreference$SavedState;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Landroidx/preference/SeekBarPreference$SavedState;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Landroidx/preference/PreferenceGroup$SavedState;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Landroidx/preference/Preference$BaseSavedState;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Landroidx/preference/MultiSelectListPreference$SavedState;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Landroidx/preference/ListPreference$SavedState;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Landroidx/preference/EditTextPreference$SavedState;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Landroidx/fragment/app/FragmentManagerState;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Landroidx/fragment/app/BackStackState;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Landroidx/fragment/app/BackStackRecordState;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Landroidx/core/widget/NestedScrollView$SavedState;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Landroidx/activity/result/IntentSenderRequest;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Landroidx/activity/result/ActivityResult;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Landroidx/fragment/app/FragmentState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
