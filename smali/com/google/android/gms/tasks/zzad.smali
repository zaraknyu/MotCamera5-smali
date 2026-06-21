.class public final Lcom/google/android/gms/tasks/zzad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;
.implements Landroidx/compose/animation/core/Animations;
.implements Landroidx/compose/ui/graphics/ColorProducer;
.implements Landroidx/compose/ui/platform/WindowInfo;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/sqlite/db/SupportSQLiteQuery;
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/OnCanceledListener;
.implements Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;


# instance fields
.field public final synthetic $r8$classId:I

.field public zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FF)V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/tasks/zzad;->$r8$classId:I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroidx/compose/animation/core/FloatSpringSpec;

    const v1, 0x3c23d70a    # 0.01f

    .line 38
    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FFF)V

    .line 39
    iput-object v0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/gms/tasks/zzad;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    return-void

    .line 4
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    return-void

    .line 6
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    return-void

    .line 8
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    return-void

    .line 10
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p1, Landroidx/compose/ui/graphics/AndroidCanvas;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    return-void

    .line 12
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x10 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/tasks/zzad;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/google/android/gms/tasks/zzad;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([J)V
    .locals 5

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/gms/tasks/zzad;->$r8$classId:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 16
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 17
    new-instance v0, Landroidx/collection/MutableLongList;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    .line 18
    iget v1, v0, Landroidx/collection/MutableLongList;->_size:I

    if-ltz v1, :cond_3

    .line 19
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    array-length v2, p1

    add-int/2addr v2, v1

    .line 21
    iget-object v3, v0, Landroidx/collection/MutableLongList;->content:[J

    .line 22
    array-length v4, v3

    if-ge v4, v2, :cond_1

    .line 23
    array-length v4, v3

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 24
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    const-string v3, "copyOf(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Landroidx/collection/MutableLongList;->content:[J

    .line 25
    :cond_1
    iget-object v2, v0, Landroidx/collection/MutableLongList;->content:[J

    .line 26
    iget v3, v0, Landroidx/collection/MutableLongList;->_size:I

    if-eq v1, v3, :cond_2

    .line 27
    array-length v4, p1

    add-int/2addr v4, v1

    .line 28
    invoke-static {v2, v2, v4, v1, v3}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    :cond_2
    const/4 v3, 0x0

    .line 29
    array-length v4, p1

    .line 30
    invoke-static {p1, v2, v1, v3, v4}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)V

    .line 31
    iget v1, v0, Landroidx/collection/MutableLongList;->_size:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/collection/MutableLongList;->_size:I

    goto :goto_0

    .line 32
    :cond_3
    const-string p0, ""

    invoke-static {p0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 33
    :cond_4
    new-instance v0, Landroidx/collection/MutableLongList;

    const/16 p1, 0x10

    .line 34
    invoke-direct {v0, p1}, Landroidx/collection/MutableLongList;-><init>(I)V

    .line 35
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public __fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    new-instance v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/tasks/zzad;I)V

    invoke-static {p1, v0}, Landroidx/room/util/RelationUtil;->recursiveFetchHashMap(Ljava/util/HashMap;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    const-string v1, "SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN ("

    invoke-static {v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(ILjava/lang/StringBuilder;)V

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    invoke-static {v2, v1}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string/jumbo v1, "work_spec_id"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    sget-object v4, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    invoke-static {v3}, Landroidx/work/Data$Companion;->fromByteArray([B)Landroidx/work/Data;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public __fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x3e7

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    new-instance v0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3}, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/tasks/zzad;I)V

    invoke-static {p1, v0}, Landroidx/room/util/RelationUtil;->recursiveFetchHashMap(Ljava/util/HashMap;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    const-string v1, "SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN ("

    invoke-static {v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(ILjava/lang/StringBuilder;)V

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    invoke-static {v2, v1}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    move v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    add-int/2addr v4, v2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {p0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string/jumbo v0, "work_spec_id"

    invoke-static {p0, v0}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/common/internal/service/zap;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/zai;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/TelemetryData;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/base/zaa;->zab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/base/zac;->zac(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p0, p1, Lcom/google/android/gms/internal/base/zaa;->zaa:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    iget-object p0, p2, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public acquire(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    return-void
.end method

.method public apply(Landroid/graphics/Typeface;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTypefaceInternal(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    :cond_0
    return-void
.end method

.method public bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    iget-object v0, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->bindingTypes:[I

    array-length v0, v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->bindingTypes:[I

    aget v3, v3, v2

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->blobBindings:[[B

    aget-object v3, v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->stringBindings:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->doubleBindings:[D

    aget-wide v3, v3, v2

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;->longBindings:[J

    aget-wide v3, v3, v2

    invoke-interface {p1, v2, v3, v4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public build()Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;
    .locals 12

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->INSTANCE:Landroidx/transition/Transition$1;

    invoke-static {v1}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/google/android/gms/tasks/zzs;

    const/16 v2, 0x17

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/tasks/zzs;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Lcom/google/android/gms/tasks/zzs;

    new-instance p0, Landroidx/room/ObservedTableVersions;

    const/16 v2, 0x1b

    invoke-direct {p0, v2, v1}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    new-instance v2, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:Ljavax/inject/Provider;

    iget-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Lcom/google/android/gms/tasks/zzs;

    new-instance v1, Landroidx/room/ObservedTableVersions;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0}, Landroidx/room/ObservedTableVersions;-><init>(ILjava/lang/Object;)V

    new-instance p0, Lcom/google/android/gms/tasks/zzad;

    const/16 v2, 0x19

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:Ljavax/inject/Provider;

    new-instance p0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Lcom/google/android/gms/tasks/zzs;

    new-instance v7, Lcom/google/zxing/Result;

    const/4 v2, 0x3

    invoke-direct {v7, v1, v6, p0, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v4, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/motorola/camera/AppFeatures;

    const/16 v9, 0xb

    move-object v8, v6

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object p0, v7

    move-object v7, v6

    move-object v6, p0

    move-object p0, v3

    new-instance v3, Lcom/motorola/camera/fsm/Fsm;

    const/4 v10, 0x5

    move-object v9, v6

    move-object v8, v4

    move-object v4, v1

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/fsm/Fsm;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v4, v8

    new-instance v1, Landroidx/work/WorkQuery;

    invoke-direct {v1, v4, v6, v7, v6}, Landroidx/work/WorkQuery;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/zxing/Result;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->transportRuntimeProvider:Ljavax/inject/Provider;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must be set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancelAndRemoveAll(Ljava/util/concurrent/CancellationException;)V
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    new-array v1, v0, [Lkotlinx/coroutines/CancellableContinuation;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v4, v4, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-interface {v3, p1}, Lkotlinx/coroutines/CancellableContinuation;->cancel(Ljava/lang/Throwable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string/jumbo p0, "uncancelled requests present"

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    return-void
.end method

.method public get(I)Landroidx/compose/animation/core/FloatAnimationSpec;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/FloatSpringSpec;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/mlkit/common/internal/zzb;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/room/ObservedTableVersions;

    invoke-virtual {p0}, Landroidx/room/ObservedTableVersions;->get()Ljava/lang/Object;

    move-result-object p0

    .line 4
    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;->DEFAULT:Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;-><init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_EventStoreConfig;Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;)V

    return-object v1
.end method

.method public getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    return-object p0
.end method

.method public getSchemeUuid()Ljava/util/UUID;
    .locals 0

    sget-object p0, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    return-object p0
.end method

.method public getSql()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;

    iget-object p0, p0, Landroidx/room/driver/SupportSQLiteStatement;->sql:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public invoke-0d7_KjU()J
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;

    iget-object v0, p0, Landroidx/compose/material3/DelegatingThemeAwareRippleNode;->color:Landroidx/compose/ui/graphics/ColorProducer;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/ColorProducer;->invoke-0d7_KjU()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    sget-object v0, Landroidx/compose/material3/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material3/RippleConfiguration;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Landroidx/compose/material3/RippleConfiguration;->color:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    sget-object v0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    return-wide v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    iget p1, p0, Lcom/google/android/gms/tasks/zzad;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    iget-object p0, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p1, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onCanceled()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/tasks/zzad;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/SubMenuBuilder;

    iget-object v0, v0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mParentMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    move-object p1, v0

    :cond_3
    iget-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPanels:[Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v4, :cond_4

    array-length v5, v4

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    if-ge v1, v5, :cond_6

    aget-object v6, v4, v1

    if-eqz v6, :cond_5

    iget-object v7, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne v7, p1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_8

    if-eqz v3, :cond_7

    iget p1, v6, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    invoke-virtual {p0, p1, v6, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->callOnPanelClosed(ILandroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-virtual {p0, v6, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v6, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_8
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tasks/zzad;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/view/menu/SubMenuBuilder;

    iget-object v0, v0, Landroidx/appcompat/view/menu/SubMenuBuilder;->mItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mHasActionBar:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mDestroyed:Z

    if-nez p0, :cond_2

    const/16 p0, 0x6c

    invoke-interface {v0, p0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_2
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onResultReceived(ILjava/lang/Object;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "RESULT_INSTALL_SKIP_FILE_SUCCESS"

    goto :goto_0

    :pswitch_3
    const-string v0, "RESULT_PARSE_EXCEPTION"

    goto :goto_0

    :pswitch_4
    const-string v0, "RESULT_IO_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string v0, "RESULT_BASELINE_PROFILE_NOT_FOUND"

    goto :goto_0

    :pswitch_6
    const-string v0, "RESULT_DESIRED_FORMAT_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESULT_NOT_WRITABLE"

    goto :goto_0

    :pswitch_8
    const-string v0, "RESULT_UNSUPPORTED_ART_VERSION"

    goto :goto_0

    :pswitch_9
    const-string v0, "RESULT_ALREADY_INSTALLED"

    goto :goto_0

    :pswitch_a
    const-string v0, "RESULT_INSTALL_SUCCESS"

    :goto_0
    const/4 v1, 0x6

    const-string v2, "ProfileInstaller"

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/profileinstaller/ProfileInstallReceiver;

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public perform(Landroid/view/View;)Z
    .locals 2

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object p0, p0, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    :cond_0
    return v0
.end method

.method public release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    return-void
.end method

.method public requiresSecureDecoder(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public resumeAndRemoveAll()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    const/4 v0, 0x0

    iget v1, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    iget v1, v0, Lkotlin/ranges/IntProgression;->first:I

    iget v0, v0, Lkotlin/ranges/IntProgression;->last:I

    if-gt v1, v0, :cond_0

    :goto_0
    iget-object v2, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    iget-object v2, v2, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    return-void
.end method
