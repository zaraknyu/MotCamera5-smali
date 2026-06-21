.class public final Lcom/motorola/camera/fsm/Fsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationAndConstantLoader;
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/AnnotationLoader;


# instance fields
.field public final synthetic $r8$classId:I

.field public mAutoTransEvent:Ljava/lang/Object;

.field public mChangeListenersMap:Ljava/lang/Object;

.field public mCurrentState:Ljava/lang/Object;

.field public mFsmContext:Ljava/lang/Object;

.field public mFsmLoader:Ljava/lang/Object;

.field public mStates:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f080080

    const v0, 0x7f080036

    const v1, 0x7f080082

    .line 30
    filled-new-array {v1, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 31
    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    .line 32
    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    const p1, 0x7f080045

    const v0, 0x7f080066

    const v1, 0x7f080067

    .line 33
    filled-new-array {v1, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    const p1, 0x7f080079

    const v0, 0x7f080083

    .line 34
    filled-new-array {p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    const p1, 0x7f08003a

    const v0, 0x7f080040

    const v1, 0x7f080039

    const v2, 0x7f08003f

    .line 35
    filled-new-array {v1, v2, p1, v0}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    return-void

    .line 36
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f08004e
        0x7f080071
        0x7f080055
        0x7f080050
        0x7f080051
        0x7f080054
        0x7f080053
    .end array-data

    :array_1
    .array-data 4
        0x7f08007f
        0x7f080081
        0x7f080047
        0x7f08007b
        0x7f08007c
        0x7f08007d
        0x7f08007e
    .end array-data
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Timeline$Period;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    .line 46
    sget-object p1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    .line 47
    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    .line 48
    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    .line 49
    sget-object p1, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/concurrent/FileLock;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    const/16 v0, 0xa

    iput v0, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    .line 18
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 21
    :try_start_0
    const-string v1, "killAllBackgroundProcesses"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    :try_start_1
    const-string/jumbo v1, "setReserveFreeKBytes"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    :catch_1
    :try_start_2
    const-string/jumbo v1, "setReserveFreeKBytesWithWhitelist"

    const-class v2, Ljava/util/List;

    filled-new-array {v0, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 24
    :catch_2
    :try_start_3
    const-string/jumbo v1, "setExtraFreeKBytes"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 25
    :catch_3
    :try_start_4
    const-string/jumbo v1, "setSwappiness"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p7, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    iput-object p5, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    iput-object p6, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    .line 4
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    sget-object p2, Lcom/google/android/gms/signin/SignInOptions;->zaa:Lcom/google/android/gms/signin/SignInOptions;

    iput-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    new-instance p2, Ljava/util/HashSet;

    .line 5
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_1

    .line 7
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    return-void

    .line 8
    :cond_1
    invoke-static {p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    .line 9
    throw p0
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    .line 39
    new-instance p1, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/DefaultScrollableState$scrollScope$1;-><init>(Lcom/motorola/camera/fsm/Fsm;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    .line 40
    new-instance p1, Landroidx/compose/foundation/MutatorMutex;

    invoke-direct {p1}, Landroidx/compose/foundation/MutatorMutex;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    .line 41
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 42
    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;Landroidx/work/WorkQuery;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lcom/motorola/camera/ui/widgets/gl/Matrices;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    .line 10
    iput v0, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p4, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    .line 13
    new-instance p4, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    const/16 v0, 0x12

    invoke-direct {p4, v0, p0}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p4}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunction(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    move-result-object p3

    iput-object p3, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    .line 16
    new-instance p3, Lkotlinx/coroutines/flow/SharingConfig;

    invoke-direct {p3, p1, p2}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Landroidx/work/WorkQuery;)V

    iput-object p3, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    .line 17
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    return-void
.end method

.method public static final access$createConstant(Lcom/motorola/camera/fsm/Fsm;Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    invoke-static {p2, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValueFactory;->createConstantValue(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported annotation argument: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ErrorValue$ErrorValueWithMessage;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ErrorValue$ErrorValueWithMessage;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static arrayContains([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6

    const v0, 0x7f040112

    invoke-static {p0, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f04010f

    invoke-static {p0, v1}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    sget-object v4, Landroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    sget-object v5, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    filled-new-array {v1, v2, v4, v5}, [[I

    move-result-object v1

    filled-new-array {p0, v3, v0, p1}, [I

    move-result-object p0

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public static synthetic findClassAndLoadMemberAnnotations$default(Lcom/motorola/camera/fsm/Fsm;Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;
    .locals 9

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v5, v0

    :goto_0
    and-int/lit8 v0, p5, 0x10

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    move-object v7, p3

    and-int/lit8 p3, p5, 0x20

    if-eqz p3, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, p4

    :goto_1
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/motorola/camera/fsm/Fsm;->findClassAndLoadMemberAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 11

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1, p3, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v7

    iget-wide v9, p3, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p3

    :goto_2
    move v10, p3

    goto :goto_4

    :cond_3
    :goto_3
    const/4 p3, -0x1

    goto :goto_2

    :goto_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    move-result v8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    move-result v9

    invoke-static/range {v5 .. v10}, Lcom/motorola/camera/fsm/Fsm;->isMatchingMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result p3

    if-eqz p3, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    move-result v8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    move-result v9

    move-object v5, p2

    invoke-static/range {v5 .. v10}, Lcom/motorola/camera/fsm/Fsm;->isMatchingMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v5

    :cond_6
    return-object v4
.end method

.method public static findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/CameraState;)I
    .locals 3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/CameraState;->mHierarchy:[Lcom/motorola/camera/fsm/camera/CameraState;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    if-ne v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;IZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;
    .locals 6

    const-string/jumbo v0, "proto"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getJvmConstructorSignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->fromJvmMemberSignature(Landroidx/compose/runtime/saveable/RememberSaveableKt;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    if-eqz v0, :cond_3

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getJvmMethodSignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;

    move-result-object p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->fromJvmMemberSignature(Landroidx/compose/runtime/saveable/RememberSaveableKt;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->propertySignature:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    const-string/jumbo v3, "propertySignature"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgq;->getExtensionOrNull(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p3}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_9

    const/4 p0, 0x2

    if-eq p3, p0, :cond_7

    const/4 p0, 0x3

    if-eq p3, p0, :cond_5

    goto :goto_0

    :cond_5
    iget p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->bitField0_:I

    const/16 p2, 0x8

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_6

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->setter_:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    const-string p2, "getSetter(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->name_:I

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->desc_:I

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    return-object v1

    :cond_7
    iget p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->bitField0_:I

    const/4 p2, 0x4

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_8

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->getter_:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    const-string p2, "getGetter(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->name_:I

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->desc_:I

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_8
    return-object v1

    :cond_9
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroidx/compose/material/ripple/Ripple_androidKt;->getPropertySignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;ZZZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_0
    return-object v1
.end method

.method public static getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f080075

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f080076

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-ne p1, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-ne p1, p2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p2, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {v0, p0, p1}, [Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x1020000

    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 p0, 0x1

    const p1, 0x102000f

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 p0, 0x2

    const p1, 0x102000d

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p2
.end method

.method public static isMatchingMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v1, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    if-ne v1, p3, :cond_1

    iget p1, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    const/4 p1, -0x1

    if-ne v1, p1, :cond_3

    iget p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p2, :cond_0

    sget-object p2, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-static {p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public addState(Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public addTimelineForMediaPeriodId(Lcom/google/common/base/Splitter;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {p0, p2}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Timeline;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p2, p0}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchRawDelta(F)F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Lambda;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public findClassAndLoadMemberAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgh;->getSpecialCaseContainerClass(Landroidx/room/SharedSQLiteStatement;ZZLjava/lang/Boolean;ZLcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    move-result-object p1

    if-nez p1, :cond_2

    instance-of p1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    move-object p1, v1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    iget-object p1, p1, Landroidx/room/SharedSQLiteStatement;->stmt$delegate:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    instance-of p4, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    if-eqz p4, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    goto :goto_1

    :cond_1
    move-object p1, p3

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AnnotationsContainerWithConstants;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AnnotationsContainerWithConstants;->memberAnnotations:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_4

    :goto_2
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_4
    return-object p0
.end method

.method public fireChangeEvent(Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V
    .locals 2

    new-instance v0, Lcom/google/zxing/Result;

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/zxing/Result;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V

    iget-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/ChangeListener;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeListener;->stateChanged(Lcom/google/zxing/Result;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->get()Ljava/lang/Object;

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    new-instance p0, Landroidx/collection/internal/Lock;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    return-object p0
.end method

.method public getCameraInfo(Ljava/lang/String;)Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/device/CameraHandlerThread$CameraInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/motorola/camera/device/exception/CameraInfoNotFoundException;

    const-string v0, "CameraInfo of "

    const-string v1, " is null or  absent"

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 7

    const v0, 0x7f08004a

    if-ne p2, v0, :cond_0

    const p0, 0x7f060015

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f080078

    if-ne p2, v0, :cond_1

    const p0, 0x7f060018

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f080077

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    const/4 p0, 0x3

    new-array p2, p0, [[I

    new-array p0, p0, [I

    const v0, 0x7f040146

    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x2

    const v4, 0x7f040111

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v0, p2, v1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    aput v0, p0, v1

    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v0, p2, v5

    invoke-static {p1, v4}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v5

    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object p1, p2, v3

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, p0, v3

    goto :goto_0

    :cond_2
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v2, p2, v1

    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, p0, v1

    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v1, p2, v5

    invoke-static {p1, v4}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    aput v1, p0, v5

    sget-object v1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v1, p2, v3

    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, p0, v3

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p2, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1

    :cond_3
    const v0, 0x7f08003e

    if-ne p2, v0, :cond_4

    const p0, 0x7f04010f

    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/Fsm;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_4
    const v0, 0x7f080038

    if-ne p2, v0, :cond_5

    invoke-static {p1, v1}, Lcom/motorola/camera/fsm/Fsm;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_5
    const v0, 0x7f08003d

    if-ne p2, v0, :cond_6

    const p0, 0x7f04010d

    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/motorola/camera/fsm/Fsm;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_6
    const v0, 0x7f080073

    if-eq p2, v0, :cond_c

    const v0, 0x7f080074

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, Lcom/motorola/camera/fsm/Fsm;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_8

    const p0, 0x7f040113

    invoke-static {p1, p0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, Lcom/motorola/camera/fsm/Fsm;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_9

    const p0, 0x7f060014

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {p0, p2}, Lcom/motorola/camera/fsm/Fsm;->arrayContains([II)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f060013

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_a
    const p0, 0x7f080070

    if-ne p2, p0, :cond_b

    const p0, 0x7f060016

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_c
    :goto_1
    const p0, 0x7f060017

    invoke-static {p1, p0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fsm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleEvent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/Trigger;->mEvent:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/CameraState;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState;->mTransitions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/camera/fsm/Fsm;->processTransition(Lcom/motorola/camera/fsm/camera/CameraState;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/CameraState;->mHierarchy:[Lcom/motorola/camera/fsm/camera/CameraState;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    if-nez v1, :cond_3

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/motorola/camera/fsm/camera/CameraState;->mTransitions:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v1, v0, v2

    invoke-virtual {p0, v1, p1, p2}, Lcom/motorola/camera/fsm/Fsm;->processTransition(Lcom/motorola/camera/fsm/camera/CameraState;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V

    return v1
.end method

.method public isImplicitRepeatableContainer(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Z
    .locals 4

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getOuterClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Container"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    invoke-static {v0, p1, p0}, Landroidx/compose/runtime/changelist/OperationKt;->findKotlinClass(Lcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/SpecialJvmAnnotations;->SPECIAL_ANNOTATIONS:Ljava/util/LinkedHashSet;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    const-string p1, "klass"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p0

    move p1, v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAbi;->REPEATABLE_ANNOTATION_CONTAINER_META_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v0, v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public isScrollInProgress()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public loadAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Ljava/util/List;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;
    .locals 8

    const-string/jumbo v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Landroidx/work/WorkQuery;

    invoke-static {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->findNonGenericClassAcrossDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Landroidx/work/WorkQuery;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v4

    new-instance v2, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;-><init>(Lcom/motorola/camera/fsm/Fsm;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    return-object v2
.end method

.method public loadAnnotationDefaultValue(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Object;
    .locals 7

    const-string/jumbo v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x3

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$$Lambda$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$$Lambda$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/fsm/Fsm;->loadConstantFromProperty(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;ILkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public loadAnnotationIfNotSpecial(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;Ljava/util/List;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;
    .locals 1

    const-string/jumbo v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/SpecialJvmAnnotations;->SPECIAL_ANNOTATIONS:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/Fsm;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Ljava/util/List;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    move-result-object p0

    return-object p0
.end method

.method public loadCallableAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;I)Ljava/util/List;
    .locals 9

    const-string/jumbo v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/Fsm;->loadPropertyAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p1, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v1, p1, Landroidx/room/SharedSQLiteStatement;->lock:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, p3, v2}, Lcom/motorola/camera/fsm/Fsm;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;IZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_1
    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/fsm/Fsm;->findClassAndLoadMemberAnnotations$default(Lcom/motorola/camera/fsm/Fsm;Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadClassAnnotations(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/room/SharedSQLiteStatement;->stmt$delegate:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    :cond_1
    if-eqz v2, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->klass:Ljava/lang/Class;

    const-string v1, "klass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lkotlin/UIntArray$Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getAnnotationClass(Ljava/lang/annotation/Annotation;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getClassId(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v3

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;

    invoke-direct {v4, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;-><init>(Ljava/lang/annotation/Annotation;)V

    invoke-virtual {p0, v3, v4, p1}, Lcom/motorola/camera/fsm/Fsm;->loadAnnotationIfNotSpecial(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectAnnotationSource;Ljava/util/List;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/AnimatedVisibilityKt;->processAnnotationArguments(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class for loading annotations is not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public loadConstantFromProperty(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;ILkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONST:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v1, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->isMovedFromInterfaceCompanion(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result v6

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgh;->getSpecialCaseContainerClass(Landroidx/room/SharedSQLiteStatement;ZZLjava/lang/Boolean;ZLcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    instance-of p1, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    if-eqz p1, :cond_1

    move-object p1, v2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    iget-object p1, p1, Landroidx/room/SharedSQLiteStatement;->stmt$delegate:Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    if-eqz v1, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinarySourceElement;->binaryClass:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->classHeader:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;->metadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->KOTLIN_1_3_RC_METADATA_VERSION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    const-string/jumbo v4, "version"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    iget v5, v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    iget v3, v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->patch:I

    invoke-virtual {v1, v4, v5, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->isAtLeast(III)Z

    move-result v1

    iget-object v3, v2, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v2, v2, Landroidx/room/SharedSQLiteStatement;->lock:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    invoke-static {p2, v3, v2, p3, v1}, Lcom/motorola/camera/fsm/Fsm;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;IZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p5, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/builtins/UnsignedTypes;->isUnsignedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p1

    if-eqz p1, :cond_9

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ByteValue;

    if-eqz p1, :cond_6

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ByteValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(B)V

    return-object p1

    :cond_6
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ShortValue;

    if-eqz p1, :cond_7

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ShortValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(S)V

    return-object p1

    :cond_7
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntValue;

    if-eqz p1, :cond_8

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(I)V

    return-object p1

    :cond_8
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/LongValue;

    if-eqz p1, :cond_9

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/LongValue;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/UIntValue;-><init>(J)V

    return-object p1

    :cond_9
    return-object p0
.end method

.method public loadEnumEntryAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;)Ljava/util/List;
    .locals 8

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$EnumEntry;->name_:I

    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;->mapClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "desc"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x23

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/motorola/camera/fsm/Fsm;->findClassAndLoadMemberAnnotations$default(Lcom/motorola/camera/fsm/Fsm;Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadExtensionReceiverParameterAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;I)Ljava/util/List;
    .locals 6

    const-string/jumbo v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    iget-object v0, p1, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v1, p1, Landroidx/room/SharedSQLiteStatement;->lock:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, p3, v2}, Lcom/motorola/camera/fsm/Fsm;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;IZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;->signature:Ljava/lang/String;

    const-string v0, "@0"

    invoke-static {p3, p2, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x3c

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/fsm/Fsm;->findClassAndLoadMemberAnnotations$default(Lcom/motorola/camera/fsm/Fsm;Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public loadPropertyAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;)Ljava/util/List;
    .locals 11

    iget-object v0, p1, Landroidx/room/SharedSQLiteStatement;->lock:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iget-object v1, p1, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONST:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v3, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->isMovedFromInterfaceCompanion(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result v8

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;

    if-ne p3, v2, :cond_1

    const/16 p3, 0x28

    invoke-static {p2, v1, v0, p3}, Landroidx/compose/material/ripple/Ripple_androidKt;->getPropertySignature$default(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v9, 0x8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/fsm/Fsm;->findClassAndLoadMemberAnnotations$default(Lcom/motorola/camera/fsm/Fsm;Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v4, p0

    move-object v5, p1

    const/16 p0, 0x30

    invoke-static {p2, v1, v0, p0}, Landroidx/compose/material/ripple/Ripple_androidKt;->getPropertySignature$default(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, v6, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;->signature:Ljava/lang/String;

    const-string p1, "$delegate"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result p0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;->DELEGATE_FIELD:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;

    if-ne p3, p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eq p0, p2, :cond_4

    :goto_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_4
    move-object v9, v7

    const/4 v7, 0x1

    move v10, v8

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/motorola/camera/fsm/Fsm;->findClassAndLoadMemberAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadPropertyBackingFieldAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;
    .locals 1

    const-string/jumbo v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;->BACKING_FIELD:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/fsm/Fsm;->loadPropertyAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadPropertyConstant(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Object;
    .locals 7

    const-string/jumbo v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$$Lambda$1;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationAndConstantLoader$$Lambda$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/fsm/Fsm;->loadConstantFromProperty(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;ILkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public loadPropertyDelegateFieldAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Ljava/util/List;
    .locals 1

    const-string/jumbo v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;->DELEGATE_FIELD:Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;

    invoke-virtual {p0, p1, p2, v0}, Lcom/motorola/camera/fsm/Fsm;->loadPropertyAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/load/kotlin/AbstractBinaryClassAnnotationLoader$PropertyRelatedElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadTypeAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;
    .locals 3

    const-string/jumbo v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->typeAnnotation:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getExtension(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/SharingConfig;

    invoke-virtual {v2, v1, p2}, Lkotlinx/coroutines/flow/SharingConfig;->deserializeAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public loadTypeParameterAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Ljava/util/ArrayList;
    .locals 3

    const-string/jumbo v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->typeParameterAnnotation:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getExtension(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/SharingConfig;

    invoke-virtual {v2, v1, p2}, Lkotlinx/coroutines/flow/SharingConfig;->deserializeAnnotation(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public loadValueParameterAnnotations(Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;IILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)Ljava/util/List;
    .locals 9

    const-string p5, "callableProto"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "kind"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    iget-object p5, p1, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    check-cast p5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v0, p1, Landroidx/room/SharedSQLiteStatement;->lock:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    const/4 v1, 0x0

    invoke-static {p2, p5, v0, p3, v1}, Lcom/motorola/camera/fsm/Fsm;->getCallableSignature(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;IZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    move-result-object p3

    if-eqz p3, :cond_7

    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    const/16 v0, 0x20

    const/16 v2, 0x40

    const/4 v3, 0x1

    if-eqz p5, :cond_1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    and-int/lit8 p5, p2, 0x20

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    and-int/2addr p2, v2

    if-ne p2, v2, :cond_5

    :goto_0
    move v1, v3

    goto :goto_2

    :cond_1
    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    if-eqz p5, :cond_3

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    and-int/lit8 p5, p2, 0x20

    if-ne p5, v0, :cond_2

    goto :goto_1

    :cond_2
    and-int/2addr p2, v2

    if-ne p2, v2, :cond_5

    :goto_1
    goto :goto_0

    :cond_3
    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    if-eqz p5, :cond_6

    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    iget-object p5, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->kind:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class$Kind;

    if-ne p5, v0, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :cond_4
    iget-boolean p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;->isInner:Z

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    add-int/2addr p4, v1

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;->signature:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/motorola/camera/fsm/Fsm;->findClassAndLoadMemberAnnotations$default(Lcom/motorola/camera/fsm/Fsm;Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/load/kotlin/MemberSignature;Ljava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported message: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public processTransition(Lcom/motorola/camera/fsm/camera/CameraState;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 12

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, p1, Lcom/motorola/camera/fsm/camera/CameraState;->mTransitions:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraTransition;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    iget-boolean v4, v1, Lcom/motorola/camera/fsm/camera/CameraTransition;->mFireChangeEvent:Z

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraTransition;->mDoAfter:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraTransition;->mDoBefore:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/CameraTransition;->mEndState:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-interface {v3, v0, p3}, Lcom/motorola/camera/fsm/GuardedTransitionRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object p2, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/CameraState;

    const/4 v3, 0x1

    if-nez v1, :cond_4

    if-eqz v6, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v6, p1, v0, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-eqz v5, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v5, p1, v0, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    if-eqz v4, :cond_19

    iget-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    sget-object p2, Lcom/motorola/camera/fsm/ChangeEvent$Type;->REENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/Fsm;->fireChangeEvent(Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V

    return v3

    :cond_4
    iget-object v7, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/CameraState;

    const/4 v8, 0x0

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast v7, Landroidx/room/concurrent/FileLock;

    move-object v9, v1

    check-cast v9, Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v10, v7, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v10, Ljava/util/EnumMap;

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/StateKey;->mKey:[Lcom/motorola/camera/fsm/camera/StateKey$Key;

    array-length v11, v9

    if-lez v11, :cond_5

    aget-object v9, v9, v2

    goto :goto_0

    :cond_5
    move-object v9, v8

    :goto_0
    invoke-virtual {v10, v9}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/fsm/camera/states/iCameraState;

    if-eqz v9, :cond_6

    new-instance v10, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v10, v8}, Lcom/motorola/camera/CameraKpi;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;)V

    invoke-interface {v9, v10}, Lcom/motorola/camera/fsm/camera/states/iCameraState;->configure(Lcom/motorola/camera/CameraKpi;)V

    iget-object v9, v10, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v9, Ljava/util/LinkedHashSet;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/fsm/camera/CameraState;

    iget-object v11, v7, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v11, Lcom/motorola/camera/fsm/Fsm;

    invoke-virtual {v11, v10}, Lcom/motorola/camera/fsm/Fsm;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/CameraState;

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Transition \"to\" state:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " hasn\'t been loaded!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    iget-object v9, v7, Lcom/motorola/camera/fsm/camera/CameraState;->mHierarchy:[Lcom/motorola/camera/fsm/camera/CameraState;

    :goto_3
    iget-object v10, p1, Lcom/motorola/camera/fsm/camera/CameraState;->mHierarchy:[Lcom/motorola/camera/fsm/camera/CameraState;

    array-length v11, v10

    if-ge v2, v11, :cond_a

    array-length v11, v9

    if-gt v11, v2, :cond_9

    goto :goto_4

    :cond_9
    aget-object v10, v10, v2

    aget-object v11, v9, v2

    if-ne v10, v11, :cond_a

    add-int/lit8 v2, v2, 0x1

    move-object v8, v10

    goto :goto_3

    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget-boolean v10, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v10, :cond_b

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    iget-object v10, v7, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    filled-new-array {p1, v10}, [Ljava/lang/Object;

    move-result-object p1

    const-string v10, "%s to %s"

    invoke-static {v10, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v10, "Fsm"

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v6, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v6, p1, v0, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez v2, :cond_e

    move-object p1, p2

    :goto_5
    if-eqz p1, :cond_e

    if-eq p1, v8, :cond_e

    iget-object v6, p1, Lcom/motorola/camera/fsm/camera/CameraState;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    if-eqz v6, :cond_d

    iget-object v10, p1, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    invoke-virtual {v6, v10, v0, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/CameraState;->mParent:Lcom/motorola/camera/fsm/camera/CameraState;

    goto :goto_5

    :cond_e
    iput-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/motorola/camera/fsm/Fsm;->findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/CameraState;)I

    move-result p1

    :goto_6
    array-length v1, v9

    if-ge p1, v1, :cond_10

    aget-object v1, v9, p1

    iget-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraState;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    if-eqz v6, :cond_f

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    invoke-virtual {v6, v1, v0, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_10
    if-nez v2, :cond_12

    invoke-static {v7, v8}, Lcom/motorola/camera/fsm/Fsm;->findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/CameraState;)I

    move-result p1

    :goto_7
    array-length v1, v9

    if-ge p1, v1, :cond_12

    aget-object v1, v9, p1

    iget-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraState;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    if-eqz v6, :cond_11

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    invoke-virtual {v6, v1, v0, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_12
    if-eqz v5, :cond_13

    iget-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-virtual {v5, p1, v0, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    if-eqz v4, :cond_16

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, p2

    :goto_8
    if-eqz v1, :cond_14

    if-eq v1, v8, :cond_14

    new-instance v4, Landroid/util/Pair;

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/ChangeEvent$Type;->EXITING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/CameraState;->mParent:Lcom/motorola/camera/fsm/camera/CameraState;

    goto :goto_8

    :cond_14
    invoke-static {v7, v8}, Lcom/motorola/camera/fsm/Fsm;->findIndexOfLeastCommonParent(Lcom/motorola/camera/fsm/camera/CameraState;Lcom/motorola/camera/fsm/camera/CameraState;)I

    move-result v1

    :goto_9
    array-length v4, v9

    if-ge v1, v4, :cond_15

    new-instance v4, Landroid/util/Pair;

    aget-object v5, v9, v1

    iget-object v5, v5, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/ChangeEvent$Type;->ENTERING:Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/ChangeEvent$Type;

    invoke-virtual {p0, v4, v1}, Lcom/motorola/camera/fsm/Fsm;->fireChangeEvent(Ljava/lang/Object;Lcom/motorola/camera/fsm/ChangeEvent$Type;)V

    goto :goto_a

    :cond_16
    if-nez v2, :cond_18

    :goto_b
    if-eqz p2, :cond_18

    if-eq p2, v8, :cond_18

    iget-object p1, p2, Lcom/motorola/camera/fsm/camera/CameraState;->mExitAfterFireChange:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    if-eqz p1, :cond_17

    iget-object v1, p2, Lcom/motorola/camera/fsm/camera/CameraState;->mStateKey:Ljava/lang/Object;

    invoke-virtual {p1, v1, v0, p3}, Lcom/motorola/camera/fsm/camera/CameraRunnable;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/CameraState;->mParent:Lcom/motorola/camera/fsm/camera/CameraState;

    goto :goto_b

    :cond_18
    iget-boolean p1, v7, Lcom/motorola/camera/fsm/camera/CameraState;->mAutoTransitionState:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/Trigger;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/Fsm;->handleEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_19
    return v3

    :cond_1a
    return v2
.end method

.method public scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/gestures/DefaultScrollableState$scroll$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/foundation/gestures/DefaultScrollableState$scroll$2;-><init>(Lcom/motorola/camera/fsm/Fsm;Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p3}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public setExtraFreeKBytes(II)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/fsm/Fsm;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public updateMediaPeriodTimelines(Landroidx/media3/common/Timeline;)V
    .locals 3

    new-instance v0, Lcom/google/common/base/Splitter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(I)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/camera/fsm/Fsm;->addTimelineForMediaPeriodId(Lcom/google/common/base/Splitter;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/camera/fsm/Fsm;->addTimelineForMediaPeriodId(Lcom/google/common/base/Splitter;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/camera/fsm/Fsm;->addTimelineForMediaPeriodId(Lcom/google/common/base/Splitter;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v2, p1}, Lcom/motorola/camera/fsm/Fsm;->addTimelineForMediaPeriodId(Lcom/google/common/base/Splitter;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v1, p1}, Lcom/motorola/camera/fsm/Fsm;->addTimelineForMediaPeriodId(Lcom/google/common/base/Splitter;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->buildOrThrow()Lcom/google/common/collect/RegularImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    return-void
.end method
