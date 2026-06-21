.class public Lcom/google/android/gms/tasks/zzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ContentFrameLayout$OnAttachListener;
.implements Landroidx/appcompat/widget/MenuItemHoverListener;
.implements Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;
.implements Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
.implements Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;
.implements Landroidx/webkit/internal/WebViewProviderFactory;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;
.implements Lcom/google/android/material/button/MaterialButton$OnPressedChangeListener;
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;
.implements Lcom/google/android/play/core/splitinstall/internal/zzcb;


# instance fields
.field public final synthetic $r8$classId:I

.field public zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(FFLandroidx/compose/animation/core/AnimationVector;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/tasks/zzs;->$r8$classId:I

    .line 46
    sget-object v0, Landroidx/compose/animation/core/VectorizedAnimationSpecKt;->EmptyIntArray:[I

    if-eqz p3, :cond_0

    .line 47
    new-instance v0, Lcom/google/android/gms/tasks/zza;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/tasks/zza;-><init>(FFLandroidx/compose/animation/core/AnimationVector;)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/zzad;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tasks/zzad;-><init>(FF)V

    .line 49
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance p1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {p1, v0}, Landroidx/transition/TransitionValuesMaps;-><init>(Landroidx/compose/animation/core/Animations;)V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    iput p1, p0, Lcom/google/android/gms/tasks/zzs;->$r8$classId:I

    sparse-switch p1, :sswitch_data_0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 24
    new-instance v0, Landroidx/compose/animation/core/AnimationState;

    .line 25
    new-instance v3, Landroidx/compose/animation/core/AnimationVector1D;

    invoke-direct {v3, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v8, 0x0

    .line 26
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void

    .line 28
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/tasks/zzb;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/gms/tasks/zzb;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void

    .line 29
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void

    .line 31
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 32
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance p1, Lcom/motorola/camera/ui/DownUpDetector;

    invoke-direct {p1}, Lcom/motorola/camera/ui/DownUpDetector;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void

    .line 34
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;

    .line 36
    invoke-direct {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderApi26;-><init>(Lcom/google/android/gms/tasks/zzs;)V

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void

    .line 38
    :sswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void

    .line 40
    :sswitch_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Landroidx/collection/LongSparseArray;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xc -> :sswitch_5
        0xe -> :sswitch_4
        0x10 -> :sswitch_3
        0x13 -> :sswitch_2
        0x14 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/tasks/zzs;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const/16 v0, 0xf

    iput v0, p0, Lcom/google/android/gms/tasks/zzs;->$r8$classId:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;

    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper$SkippingHelper19;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/google/android/gms/tasks/zzs;->$r8$classId:I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/view/ScrollFeedbackProvider;->createProvider(Landroid/view/View;)Landroid/view/ScrollFeedbackProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/ObservedTableVersions;Lcom/google/mlkit/common/internal/zze;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/gms/tasks/zzs;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/common/moduleinstall/internal/zay;Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;)V
    .locals 0

    const/16 p1, 0x18

    iput p1, p0, Lcom/google/android/gms/tasks/zzs;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([I[F[[F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x5

    iput v2, v0, Lcom/google/android/gms/tasks/zzs;->$r8$classId:I

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v4, v2, [[Landroidx/compose/animation/core/ArcSpline$Arc;

    const/4 v5, 0x0

    move v7, v3

    move v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_5

    .line 7
    aget v9, p1, v6

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v9, :cond_0

    if-eq v9, v3, :cond_3

    if-eq v9, v11, :cond_2

    if-eq v9, v10, :cond_1

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    move v13, v8

    goto :goto_3

    :cond_0
    move v13, v10

    goto :goto_3

    :cond_1
    if-ne v7, v3, :cond_3

    goto :goto_2

    :goto_1
    move v13, v7

    goto :goto_3

    :cond_2
    :goto_2
    move v7, v11

    goto :goto_1

    :cond_3
    move v7, v3

    goto :goto_1

    .line 8
    :goto_3
    aget-object v8, p3, v6

    add-int/lit8 v9, v6, 0x1

    .line 9
    aget-object v10, p3, v9

    .line 10
    aget v14, v1, v6

    .line 11
    aget v15, v1, v9

    .line 12
    array-length v12, v8

    div-int/2addr v12, v11

    array-length v3, v8

    rem-int/2addr v3, v11

    add-int/2addr v3, v12

    .line 13
    new-array v11, v3, [Landroidx/compose/animation/core/ArcSpline$Arc;

    move v12, v5

    :goto_4
    if-ge v12, v3, :cond_4

    mul-int/lit8 v16, v12, 0x2

    move/from16 v17, v12

    .line 14
    new-instance v12, Landroidx/compose/animation/core/ArcSpline$Arc;

    move/from16 v18, v16

    .line 15
    aget v16, v8, v18

    add-int/lit8 v19, v18, 0x1

    move/from16 v20, v17

    .line 16
    aget v17, v8, v19

    .line 17
    aget v18, v10, v18

    .line 18
    aget v19, v10, v19

    .line 19
    invoke-direct/range {v12 .. v19}, Landroidx/compose/animation/core/ArcSpline$Arc;-><init>(IFFFFFF)V

    aput-object v12, v11, v20

    add-int/lit8 v12, v20, 0x1

    goto :goto_4

    .line 20
    :cond_4
    aput-object v11, v4, v6

    move v6, v9

    move v8, v13

    const/4 v3, 0x1

    goto :goto_0

    .line 21
    :cond_5
    iput-object v4, v0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaz;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/common/moduleinstall/internal/zar;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/common/moduleinstall/internal/zar;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/moduleinstall/internal/zaf;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    iget-object v1, p1, Lcom/google/android/gms/internal/base/zaa;->zab:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v1, Lcom/google/android/gms/internal/base/zac;->$r8$clinit:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/base/zac;->zac(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p0, 0x2

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/base/zaa;->zac(Landroid/os/Parcel;I)V

    return-void
.end method

.method public addExtraDataToAccessibilityNodeInfo(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public addIf(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/DownUpDetector;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->add(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public addMigration(Landroidx/room/migration/Migration;)V
    .locals 3

    const-string v0, "migration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroidx/room/migration/Migration;->startVersion:I

    iget v1, p1, Landroidx/room/migration/Migration;->endVersion:I

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Overriding migration "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ROOM"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public approachAnimation(Landroidx/compose/foundation/gestures/ScrollScope;Ljava/lang/Float;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const/4 p3, 0x0

    const/16 v0, 0x1c

    invoke-static {p3, p2, v0}, Landroidx/compose/animation/core/ArcSplineKt;->AnimationState$default(FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float v1, p2, p3

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Landroidx/compose/animation/core/SpringSpec;

    move-object v0, p1

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->access$animateWithTarget(Landroidx/compose/foundation/gestures/ScrollScope;FFLandroidx/compose/animation/core/AnimationState;Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    check-cast p0, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    return-object p0
.end method

.method public binaryElement(IILandroidx/media3/extractor/ExtractorInput;)V
    .locals 22

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    iget-object v2, v2, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->varintReader:Landroidx/media3/extractor/mkv/VarintReader;

    iget-object v5, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v7, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0xa1

    const/16 v9, 0xa3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eq v0, v8, :cond_b

    if-eq v0, v9, :cond_b

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_8

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v2, v1, [B

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    invoke-interface {v3, v2, v14, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v2, v1, [B

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v3, v2, v14, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    :cond_2
    iget-object v0, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-static {v0, v14}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, v6, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    rsub-int/lit8 v2, v1, 0x4

    invoke-interface {v3, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v6, v14}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    return-void

    :cond_3
    new-array v2, v1, [B

    invoke-interface {v3, v2, v14, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-instance v1, Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-direct {v1, v2, v13, v14, v14}, Landroidx/media3/extractor/TrackOutput$CryptoData;-><init>([BIII)V

    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;

    return-void

    :cond_4
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    new-array v2, v1, [B

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    invoke-interface {v3, v2, v14, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    :cond_5
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    const v4, 0x64767643

    if-eq v2, v4, :cond_7

    const v4, 0x64766343

    if-ne v2, v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v3, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return-void

    :cond_7
    :goto_0
    new-array v2, v1, [B

    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    invoke-interface {v3, v2, v14, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    :cond_8
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    if-eq v0, v11, :cond_9

    goto/16 :goto_12

    :cond_9
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    iget-object v4, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->supplementalData:Landroidx/media3/common/util/ParsableByteArray;

    if-ne v2, v12, :cond_a

    const-string v2, "V_VP9"

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v0, v4, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    invoke-interface {v3, v0, v14, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    return-void

    :cond_a
    invoke-interface {v3, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    return-void

    :cond_b
    iget v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v8, 0x8

    if-nez v6, :cond_c

    invoke-virtual {v2, v3, v14, v13, v8}, Landroidx/media3/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v9

    long-to-int v9, v9

    iput v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    iget v2, v2, Landroidx/media3/extractor/mkv/VarintReader;->length:I

    iput v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    iput v13, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    invoke-virtual {v7, v14}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    :cond_c
    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    if-nez v5, :cond_d

    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v0, v1, v0

    invoke-interface {v3, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput v14, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void

    :cond_d
    iget-object v2, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    if-ne v2, v13, :cond_22

    const/4 v2, 0x3

    invoke-virtual {v4, v3, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v9, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v9, v9, v11

    and-int/lit8 v9, v9, 0x6

    shr-int/2addr v9, v13

    const/16 v10, 0xff

    if-nez v9, :cond_10

    iput v13, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-nez v6, :cond_e

    new-array v6, v13, [I

    goto :goto_1

    :cond_e
    array-length v9, v6

    if-lt v9, v13, :cond_f

    goto :goto_1

    :cond_f
    array-length v6, v6

    mul-int/2addr v6, v11

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [I

    :goto_1
    iput-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v1, v9

    sub-int/2addr v1, v2

    aput v1, v6, v14

    :goto_2
    move/from16 v18, v8

    move/from16 v17, v13

    move/from16 v19, v14

    goto/16 :goto_b

    :cond_10
    invoke-virtual {v4, v3, v12}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v15, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v15, v15, v2

    and-int/2addr v15, v10

    add-int/2addr v15, v13

    iput v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    iget-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-nez v6, :cond_11

    new-array v6, v15, [I

    move/from16 v17, v12

    goto :goto_3

    :cond_11
    move/from16 v17, v12

    array-length v12, v6

    if-lt v12, v15, :cond_12

    goto :goto_3

    :cond_12
    array-length v6, v6

    mul-int/2addr v6, v11

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [I

    :goto_3
    iput-object v6, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-ne v9, v11, :cond_13

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    div-int/2addr v1, v2

    invoke-static {v6, v14, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_2

    :cond_13
    if-ne v9, v13, :cond_16

    move v2, v14

    move v6, v2

    move/from16 v12, v17

    :goto_4
    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    sub-int/2addr v9, v13

    if-ge v2, v9, :cond_15

    iget-object v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v14, v9, v2

    :goto_5
    add-int/lit8 v9, v12, 0x1

    invoke-virtual {v4, v3, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v15, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v12, v15, v12

    and-int/2addr v12, v10

    iget-object v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v16, v15, v2

    add-int v16, v16, v12

    aput v16, v15, v2

    if-eq v12, v10, :cond_14

    add-int v6, v6, v16

    add-int/lit8 v2, v2, 0x1

    move v12, v9

    goto :goto_4

    :cond_14
    move v12, v9

    goto :goto_5

    :cond_15
    iget-object v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v15, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v1, v15

    sub-int/2addr v1, v12

    sub-int/2addr v1, v6

    aput v1, v2, v9

    goto :goto_2

    :cond_16
    if-ne v9, v2, :cond_21

    move v2, v14

    move v6, v2

    move/from16 v12, v17

    :goto_6
    iget v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    sub-int/2addr v9, v13

    if-ge v2, v9, :cond_1e

    iget-object v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aput v14, v9, v2

    add-int/lit8 v9, v12, 0x1

    invoke-virtual {v4, v3, v9}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    iget-object v15, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v15, v15, v12

    if-eqz v15, :cond_1d

    move v15, v14

    :goto_7
    if-ge v15, v8, :cond_19

    rsub-int/lit8 v17, v15, 0x7

    move/from16 v18, v8

    shl-int v8, v13, v17

    move/from16 v17, v13

    iget-object v13, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v13, v13, v12

    and-int/2addr v13, v8

    if-eqz v13, :cond_18

    add-int v13, v9, v15

    invoke-virtual {v4, v3, v13}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->readScratch(Landroidx/media3/extractor/ExtractorInput;I)V

    move/from16 v19, v14

    iget-object v14, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v12, v14, v12

    and-int/2addr v12, v10

    not-int v8, v8

    and-int/2addr v8, v12

    int-to-long v11, v8

    :goto_8
    if-ge v9, v13, :cond_17

    shl-long v11, v11, v18

    iget-object v8, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v20, v9, 0x1

    aget-byte v8, v8, v9

    and-int/2addr v8, v10

    int-to-long v8, v8

    or-long/2addr v11, v8

    move/from16 v9, v20

    goto :goto_8

    :cond_17
    if-lez v2, :cond_1a

    mul-int/lit8 v15, v15, 0x7

    add-int/lit8 v15, v15, 0x6

    const-wide/16 v8, 0x1

    shl-long v20, v8, v15

    sub-long v20, v20, v8

    sub-long v11, v11, v20

    goto :goto_9

    :cond_18
    move/from16 v19, v14

    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v17

    move/from16 v8, v18

    const/4 v11, 0x2

    goto :goto_7

    :cond_19
    move/from16 v18, v8

    move/from16 v17, v13

    move/from16 v19, v14

    const-wide/16 v11, 0x0

    move v13, v9

    :cond_1a
    :goto_9
    const-wide/32 v8, -0x80000000

    cmp-long v8, v11, v8

    if-ltz v8, :cond_1c

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v11, v8

    if-gtz v8, :cond_1c

    long-to-int v8, v11

    iget-object v9, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    if-nez v2, :cond_1b

    goto :goto_a

    :cond_1b
    add-int/lit8 v11, v2, -0x1

    aget v11, v9, v11

    add-int/2addr v8, v11

    :goto_a
    aput v8, v9, v2

    add-int/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    move v12, v13

    move/from16 v13, v17

    move/from16 v8, v18

    move/from16 v14, v19

    const/4 v11, 0x2

    goto/16 :goto_6

    :cond_1c
    const-string v0, "EBML lacing sample size out of range."

    const/4 v6, 0x0

    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1d
    const/4 v6, 0x0

    const-string v0, "No valid varint length mask found"

    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1e
    move/from16 v18, v8

    move/from16 v17, v13

    move/from16 v19, v14

    iget-object v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    iget v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v1, v8

    sub-int/2addr v1, v12

    sub-int/2addr v1, v6

    aput v1, v2, v9

    :goto_b
    iget-object v1, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v2, v1, v19

    shl-int/lit8 v2, v2, 0x8

    aget-byte v1, v1, v17

    and-int/2addr v1, v10

    or-int/2addr v1, v2

    iget-wide v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v1, v1

    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v1

    add-long/2addr v1, v8

    iput-wide v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v1, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->type:I

    const/4 v14, 0x2

    if-eq v1, v14, :cond_20

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1f

    iget-object v1, v7, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v14

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1f

    goto :goto_c

    :cond_1f
    move/from16 v1, v19

    goto :goto_d

    :cond_20
    :goto_c
    move/from16 v1, v17

    :goto_d
    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iput v14, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    move/from16 v1, v19

    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    :goto_e
    const/16 v1, 0xa3

    goto :goto_f

    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected lacing value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_22
    move/from16 v17, v13

    goto :goto_e

    :goto_f
    if-ne v0, v1, :cond_24

    :goto_10
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v1, :cond_23

    iget-object v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v4, v3, v5, v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v9

    iget-wide v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v2, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v6, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int/2addr v2, v6

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v6, v0

    iget v8, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_10

    :cond_23
    const/4 v1, 0x0

    iput v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void

    :cond_24
    :goto_11
    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    iget v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleCount:I

    if-ge v0, v1, :cond_25

    iget-object v1, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleSizes:[I

    aget v2, v1, v0

    move/from16 v6, v17

    invoke-virtual {v4, v3, v5, v2, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->writeSampleData(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I

    move-result v2

    aput v2, v1, v0

    iget v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    add-int/2addr v0, v6

    iput v0, v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockSampleIndex:I

    goto :goto_11

    :cond_25
    :goto_12
    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzb;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zze(Ljava/lang/Object;)Z

    return-void
.end method

.method public createAccessibilityNodeInfo(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public findFocus(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public fromInputStream(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/room/ObservedTableVersions;

    if-nez p4, :cond_0

    const-string p4, "application/json"

    :cond_0
    const-string v0, "application/zip"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const-string v0, "application/x-zip"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "application/x-zip-compressed"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\\?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v4, ".lottie"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "application/gzip"

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "application/x-gzip"

    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    const-string p4, ".tgs"

    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    sget-object p1, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    if-eqz p5, :cond_3

    invoke-virtual {p0, p2, p3, p1}, Landroidx/room/ObservedTableVersions;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object p3

    new-instance p4, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p3

    goto :goto_4

    :cond_3
    invoke-static {p3, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p3

    goto :goto_4

    :cond_4
    :goto_0
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    sget-object p1, Lcom/airbnb/lottie/network/FileExtension;->GZIP:Lcom/airbnb/lottie/network/FileExtension;

    if-eqz p5, :cond_5

    invoke-virtual {p0, p2, p3, p1}, Landroidx/room/ObservedTableVersions;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object p3

    new-instance p4, Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p4, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p4, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p3

    goto :goto_4

    :cond_5
    new-instance p4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p4, p3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p4, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p3

    goto :goto_4

    :cond_6
    :goto_1
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    sget-object p4, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    if-eqz p5, :cond_7

    invoke-virtual {p0, p2, p3, p4}, Landroidx/room/ObservedTableVersions;->writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;

    move-result-object p3

    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v0, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p1

    :goto_2
    move-object p3, p1

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p1

    goto :goto_2

    :goto_3
    move-object p1, p4

    :goto_4
    if-eqz p5, :cond_8

    iget-object p4, p3, Lcom/airbnb/lottie/LottieResult;->value:Lcom/airbnb/lottie/LottieComposition;

    if-eqz p4, :cond_8

    const/4 p4, 0x1

    invoke-static {p2, p1, p4}, Landroidx/room/ObservedTableVersions;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Landroidx/room/ObservedTableVersions;->parentDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".temp"

    const-string p4, ""

    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    if-nez p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, "Unable to rename cache file "

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    :cond_8
    return-object p3
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    return-object p0
.end method

.method public getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/transition/TransitionValuesMaps;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/TransitionValuesMaps;->getDurationNanos(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getEndVelocity(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/transition/TransitionValuesMaps;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/transition/TransitionValuesMaps;->getEndVelocity(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getStatics()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    return-object p0
.end method

.method public getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 6

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/transition/TransitionValuesMaps;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/TransitionValuesMaps;->getValueFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0
.end method

.method public getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 6

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroidx/transition/TransitionValuesMaps;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/TransitionValuesMaps;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0
.end method

.method public getWebViewFeatures()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getSupportedFeatures()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebkitToCompatConverter()Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {p0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getWebkitToCompatConverter()Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    const-class v0, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    invoke-static {v0, p0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/support_lib_boundary/WebkitToCompatConverterBoundaryInterface;

    return-object p0
.end method

.method public integerElement(IJ)V
    .locals 8

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    const/16 v0, 0x5031

    const/4 v1, 0x0

    const-string v2, " not supported"

    if-eq p1, v0, :cond_13

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v7, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    long-to-int p1, p2

    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int p1, p2

    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int p1, p2

    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    return-void

    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    return-void

    :sswitch_0
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    return-void

    :sswitch_1
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    return-void

    :sswitch_2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    long-to-int p1, p2

    if-eqz p1, :cond_5

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    :cond_3
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    :cond_4
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    :cond_5
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    return-void

    :sswitch_3
    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockGroupDiscardPaddingNs:J

    return-void

    :sswitch_4
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    return-void

    :sswitch_5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    return-void

    :sswitch_6
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    return-void

    :sswitch_7
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    return-void

    :sswitch_8
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->bitsPerChannel:I

    return-void

    :sswitch_9
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    cmp-long p1, p2, v3

    if-nez p1, :cond_6

    move v0, v7

    :cond_6
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    return-void

    :sswitch_a
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    return-void

    :sswitch_b
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    return-void

    :sswitch_c
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    return-void

    :sswitch_d
    long-to-int p2, p2

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    if-eqz p2, :cond_a

    if-eq p2, v7, :cond_9

    if-eq p2, v5, :cond_8

    const/16 p1, 0xf

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    :cond_8
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    :cond_9
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    :cond_a
    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    return-void

    :sswitch_e
    iget-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    return-void

    :sswitch_f
    cmp-long p0, p2, v3

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "AESSettingsCipherMode "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_10
    const-wide/16 p0, 0x5

    cmp-long p0, p2, p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentEncAlgo "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_11
    cmp-long p0, p2, v3

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "EBMLReadVersion "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_12
    cmp-long p0, p2, v3

    if-ltz p0, :cond_e

    const-wide/16 p0, 0x2

    cmp-long p0, p2, p0

    if-gtz p0, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "DocTypeReadVersion "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_13
    const-wide/16 p0, 0x3

    cmp-long p0, p2, p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentCompAlgo "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_14
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return-void

    :sswitch_15
    iput-boolean v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockHasReferenceBlock:Z

    return-void

    :sswitch_16
    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    iget-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Landroidx/media3/common/util/LongArray;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/util/LongArray;->add(J)V

    iput-boolean v7, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    return-void

    :sswitch_17
    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockAdditionalId:I

    return-void

    :sswitch_18
    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    return-void

    :sswitch_19
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->number:I

    return-void

    :sswitch_1a
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->height:I

    return-void

    :sswitch_1b
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInCues(I)V

    iget-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->cueTimesUs:Landroidx/media3/common/util/LongArray;

    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/util/LongArray;->add(J)V

    return-void

    :sswitch_1c
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->width:I

    return-void

    :sswitch_1d
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    return-void

    :sswitch_1e
    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    return-void

    :sswitch_1f
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    cmp-long p1, p2, v3

    if-nez p1, :cond_10

    move v0, v7

    :cond_10
    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    return-void

    :sswitch_20
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->assertInTrackEntry(I)V

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->currentTrack:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p1, p2

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->type:I

    return-void

    :cond_11
    cmp-long p0, p2, v3

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentEncodingScope "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_13
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_15

    :cond_14
    :goto_0
    return-void

    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentEncodingOrder "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf1 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isInfinite()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/transition/TransitionValuesMaps;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/tinder/StateMachine;

    iget-object v0, p0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/tinder/StateMachine;Ljava/lang/Exception;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v6, v6, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_1
    if-ne v4, v5, :cond_2

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    :cond_3
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;

    invoke-direct {v0, p0, v2, p2, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;-><init>(Lcom/google/android/gms/tasks/zzs;Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    iget-object p0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public produce(Lcom/tinder/StateMachine;Landroidx/compose/ui/platform/AndroidComposeView;)Lcom/google/android/gms/tasks/zzr;
    .locals 38

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/LongSparseArray;

    new-instance v2, Landroidx/collection/LongSparseArray;

    iget-object v3, v0, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Landroidx/collection/LongSparseArray;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    iget-wide v8, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->id:J

    invoke-virtual {v1, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    if-nez v10, :cond_0

    iget-wide v10, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->uptime:J

    iget-wide v12, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->position:J

    move-wide/from16 v25, v10

    move-wide/from16 v27, v12

    const/16 v29, 0x0

    move-object/from16 v10, p2

    goto :goto_1

    :cond_0
    iget-wide v11, v10, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->uptime:J

    iget-boolean v13, v10, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->down:Z

    iget-wide v14, v10, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->positionOnScreen:J

    move-object/from16 v10, p2

    invoke-virtual {v10, v14, v15}, Landroidx/compose/ui/platform/AndroidComposeView;->screenToLocal-MK-Hz9U(J)J

    move-result-wide v14

    move-wide/from16 v25, v11

    move/from16 v29, v13

    move-wide/from16 v27, v14

    :goto_1
    iget-wide v11, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->id:J

    new-instance v16, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v13, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->uptime:J

    move v15, v6

    iget-wide v5, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->position:J

    move-object/from16 v36, v3

    iget-boolean v3, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->down:Z

    move/from16 v23, v3

    iget v3, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->pressure:F

    move/from16 v24, v3

    iget v3, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->type:I

    move/from16 v30, v3

    iget-object v3, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->historical:Ljava/util/ArrayList;

    move-object/from16 v31, v3

    move/from16 v37, v4

    iget-wide v3, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->scrollDelta:J

    move-wide/from16 v32, v3

    iget-wide v3, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->originalEventPosition:J

    move-wide/from16 v34, v3

    move-wide/from16 v21, v5

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    invoke-direct/range {v16 .. v35}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZILjava/util/ArrayList;JJ)V

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    invoke-virtual {v2, v3, v4, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-boolean v3, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->down:Z

    if-eqz v3, :cond_1

    new-instance v16, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    iget-wide v4, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->uptime:J

    iget-wide v6, v7, Landroidx/compose/ui/input/pointer/PointerInputEventData;->positionOnScreen:J

    move/from16 v21, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v16 .. v21}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;-><init>(JJZ)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v8, v9, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    :goto_2
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v3, v36

    move/from16 v4, v37

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/gms/tasks/zzr;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/tasks/zzr;-><init>(Landroidx/collection/LongSparseArray;Lcom/tinder/StateMachine;)V

    return-object v1
.end method

.method public updateScrollDeltaForApproach$foundation_release(FLandroidx/compose/ui/unit/Density;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7

    sget v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPassesKt;->DeltaThresholdForScrollAnimation:F

    invoke-interface {p2, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p2

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/animation/core/AnimationState;

    iget-object v3, v3, Landroidx/compose/animation/core/AnimationState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/animation/core/AnimationState;

    iget-boolean v5, v4, Landroidx/compose/animation/core/AnimationState;->isRunning:Z

    const/4 v6, 0x3

    if-eqz v5, :cond_2

    sub-float/2addr v3, p1

    const/4 p1, 0x0

    const/16 v5, 0x1e

    invoke-static {v4, v3, p1, v5}, Landroidx/compose/animation/core/ArcSplineKt;->copy$default(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses$updateScrollDeltaForApproach$2$1;

    invoke-direct {p1, p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses$updateScrollDeltaForApproach$2$1;-><init>(Lcom/google/android/gms/tasks/zzs;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, v0, v0, p1, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    new-instance v3, Landroidx/compose/animation/core/AnimationState;

    sget-object v4, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v5, 0x3c

    invoke-direct {v3, v4, p1, v0, v5}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;I)V

    iput-object v3, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses$updateScrollDeltaForApproach$2$2;

    invoke-direct {p1, p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses$updateScrollDeltaForApproach$2$2;-><init>(Lcom/google/android/gms/tasks/zzs;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, v0, v0, p1, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {p2, v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    return-void

    :goto_2
    invoke-static {p2, v2, v1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0
.end method

.method public zza()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tasks/zzs;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/zzac;

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/zzac;->zza:Landroid/content/Context;

    const-class v0, Lcom/google/android/play/core/splitinstall/zzx;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/play/core/splitinstall/zzx;->zzc:Lcom/google/android/play/core/splitinstall/zzx;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/splitinstall/zzx;

    sget-object v2, Lcom/google/android/play/core/splitinstall/zzo;->zzc:[Lcom/google/android/play/core/splitinstall/zzo;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/splitinstall/zzx;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/play/core/splitinstall/zzx;->zzc:Lcom/google/android/play/core/splitinstall/zzx;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/play/core/splitinstall/zzx;->zzc:Lcom/google/android/play/core/splitinstall/zzx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzaf;

    invoke-interface {p0}, Lcom/google/android/play/core/appupdate/internal/zzaf;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/appupdate/zzg;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method
