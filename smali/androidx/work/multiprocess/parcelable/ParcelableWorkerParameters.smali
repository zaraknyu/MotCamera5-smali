.class public final Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mData:Landroidx/work/Data;

.field public final mGeneration:I

.field public final mId:Ljava/util/UUID;

.field public final mRunAttemptCount:I

.field public final mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

.field public final mTags:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/zzb;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzb;-><init>(I)V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mId:Ljava/util/UUID;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v0}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 18
    :cond_1
    const-string v1, "data"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mData:Landroidx/work/Data;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mTags:Ljava/util/HashSet;

    .line 21
    const-class v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 24
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    array-length v5, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v0, v6

    .line 28
    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v3

    .line 29
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 31
    :cond_5
    new-instance v0, Landroidx/core/view/MenuHostHelper;

    const/16 v2, 0x1b

    invoke-direct {v0, v2}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    .line 32
    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 33
    iput-object v4, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    :cond_6
    if-eqz v3, :cond_7

    .line 34
    iput-object v3, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 35
    :cond_7
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRunAttemptCount:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mGeneration:I

    return-void
.end method

.method public constructor <init>(Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Landroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    .line 3
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mId:Ljava/util/UUID;

    .line 4
    iget-object v0, p1, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 5
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mData:Landroidx/work/Data;

    .line 6
    iget-object v0, p1, Landroidx/work/WorkerParameters;->mTags:Ljava/util/HashSet;

    .line 7
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mTags:Ljava/util/HashSet;

    .line 8
    iget-object v0, p1, Landroidx/work/WorkerParameters;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    .line 9
    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    .line 10
    iget v0, p1, Landroidx/work/WorkerParameters;->mRunAttemptCount:I

    .line 11
    iput v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRunAttemptCount:I

    .line 12
    iget p1, p1, Landroidx/work/WorkerParameters;->mGeneration:I

    .line 13
    iput p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mGeneration:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v0, "data"

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mData:Landroidx/work/Data;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v1}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    iput-object v1, v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->mRuntimeExtras:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRunAttemptCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mGeneration:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
