.class public Lcom/motorola/camera/PermissionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzaf;
.implements Lcom/google/android/play/core/splitinstall/testing/zzz;
.implements Lcom/google/android/play/core/splitinstall/internal/zzcb;
.implements Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;
.implements Landroidx/databinding/InverseBindingListener;
.implements Lcom/motorola/camera/ui/DownUpDetector$DownUpListener;
.implements Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture$OnItemClickListener;
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
.implements Lkotlin/reflect/jvm/internal/impl/storage/SimpleLock;


# instance fields
.field public final synthetic $r8$classId:I

.field public mFsmContext:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/PermissionCallback;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 4
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    return-void

    .line 6
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    return-void

    .line 9
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    return-void

    .line 11
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Lcom/tinder/StateMachine$Graph$State;

    invoke-direct {p1}, Lcom/tinder/StateMachine$Graph$State;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    return-void

    .line 13
    :pswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/PermissionCallback;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/PermissionCallback;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/mlkit/vision/barcode/internal/zzh;II)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Lcom/motorola/camera/PermissionCallback;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    return-void
.end method

.method public static generateVbo([F)I
    .locals 3

    sget v0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const-string v0, "glGenBuffers"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    invoke-static {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->setVboFloats(I[F)V

    return v0
.end method

.method public static hasByte([B[B)Z
    .locals 7

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    goto :goto_2

    :cond_0
    move v3, v2

    :goto_0
    sub-int v4, v0, v1

    if-gt v3, v4, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_2

    add-int v5, v3, v4

    aget-byte v5, p0, v5

    aget-byte v6, p1, v4

    if-eq v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    return v2
.end method

.method public static readInt(Z[B)I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    aget-byte p0, p1, v3

    and-int/lit16 p0, p0, 0xff

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p0, v2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p0, v1

    aget-byte p1, p1, v0

    :goto_0
    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_0
    aget-byte p0, p1, v0

    and-int/lit16 p0, p0, 0xff

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    aget-byte p1, p1, v3

    goto :goto_0
.end method

.method public static transitionTo(Ljava/lang/Object;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)Lcom/tinder/StateMachine$Graph$State$TransitionTo;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/tinder/StateMachine$Graph$State$TransitionTo;

    invoke-direct {p0, p1, p2}, Lcom/tinder/StateMachine$Graph$State$TransitionTo;-><init>(Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$Command;)V

    return-object p0
.end method


# virtual methods
.method public add(Ljava/util/Collection;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs add([Lcom/motorola/camera/fsm/camera/StateKey;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public deleteVbo(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->sVersion:I

    filled-new-array {p1}, [I

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    const-string p0, "glDeleteBuffers"

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public doBalance(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V
    .locals 4

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v3

    if-lt v3, v2, :cond_1

    goto :goto_2

    :cond_1
    aget v0, v1, v0

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    invoke-direct {v3, v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    move-object v1, v3

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    :goto_1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->minLengthByDepth:[I

    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->totalLength:I

    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, p1, :cond_4

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    invoke-direct {v1, p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    if-eqz v0, :cond_7

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->left:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->doBalance(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/RopeByteString;->right:Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/PermissionCallback;->doBalance(Lkotlin/reflect/jvm/internal/impl/protobuf/ByteString;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/JsonPath$Tombstone;)Ljava/lang/Object;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public getVboId(Lcom/motorola/camera/ui/widgets/gl/VboManager$VboType;)I
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Ljava/util/EnumMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public lock()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public on(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function2;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/tinder/StateMachine$Graph$State;

    iget-object p0, p0, Lcom/tinder/StateMachine$Graph$State;->transitions:Ljava/util/LinkedHashMap;

    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition$run$2;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p2}, Landroidx/compose/animation/core/InfiniteTransition$run$2;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onChange()V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;

    iget-object v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string/jumbo v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onEmptySpaceTap(Landroid/graphics/PointF;)V
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/high16 v2, 0x42800000    # 64.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x4

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mRows:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v5, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellWidth:F

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget p1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v2

    sub-float v0, v4, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mMenuBtn:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mCellWidth:F

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, p1, v5

    if-lez v1, :cond_1

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)V

    :cond_1
    return-void
.end method

.method public onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 1

    instance-of v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeSliderComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->onItemClick(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;)V

    :cond_0
    return-void
.end method

.method public onItemLongPress(Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    return-void
.end method

.method public onItemTouchDown(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    instance-of p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    :cond_0
    return-void
.end method

.method public onItemTouchUp(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    instance-of p0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->updateRes()V

    :cond_0
    return-void
.end method

.method public onPermissionRequestResult(Ljava/util/Map;)V
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "perm_request_code"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->NOTIFICATION_PERMISSION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result p1

    goto :goto_0

    :cond_1
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v4, v3

    move v3, p1

    move p1, v4

    :goto_0
    const-string v1, "PERMISSIONS_GRANTED"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v3, :cond_2

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MODE_DIRECTION"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->LEFT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_DENIED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void

    :cond_2
    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoDvBoardComponent;->mZooming:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-static {p0}, Lcom/motorola/camera/utility/ZoomHelper;->sendZoomScaleEndEvent(Lcom/motorola/camera/EventListener;)V

    :cond_0
    return-void
.end method

.method public parseMarker(Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;)Ljava/util/ArrayList;
    .locals 20

    move-object/from16 v0, p1

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v1, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v1

    const-string v2, "Invalid marker: "

    const/4 v3, -0x1

    if-ne v1, v3, :cond_19

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const/16 v5, -0x28

    if-ne v4, v5, :cond_18

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v5

    if-ne v5, v3, :cond_17

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v5

    const/16 v6, -0x27

    if-eq v5, v6, :cond_16

    const/16 v6, -0x26

    if-ne v5, v6, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    add-int/lit8 v7, v6, -0x2

    const-string v8, "Invalid length"

    if-ltz v7, :cond_15

    const/4 v9, 0x1

    add-int/2addr v4, v9

    const/4 v10, -0x2

    const-string v11, "Invalid exif"

    if-eq v5, v10, :cond_11

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    packed-switch v5, :pswitch_data_3

    new-instance v6, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/16 v9, -0x25

    if-ne v5, v9, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%d:DQT:%d"

    invoke-static {v5, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v5, v11}, [Ljava/lang/Object;

    move-result-object v5

    const-string v10, "%d:%02X:%d:"

    invoke-static {v9, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, p0

    move/from16 v16, v2

    move/from16 v19, v4

    goto/16 :goto_c

    :pswitch_0
    new-array v10, v7, [B

    invoke-virtual {v0, v10}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-ne v12, v7, :cond_f

    new-instance v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v5, v5, 0x20

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v13, "APP%d"

    invoke-static {v12, v13, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    const/16 v13, 0x15

    if-ge v7, v13, :cond_2

    move v13, v2

    goto :goto_2

    :cond_2
    new-array v14, v13, [B

    invoke-static {v10, v2, v14, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v13, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v14, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v14, "http://ns.adobe.com/x"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    :goto_2
    if-eqz v13, :cond_3

    const-string v6, "<"

    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->xml:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "<html><body><pre>"

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->xml:Ljava/lang/String;

    const-string v10, "</pre></body></html>"

    invoke-static {v6, v9, v10}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->xml:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v9, v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "%d:%s:[XMP]:%s"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    move-object/from16 v12, p0

    move/from16 v16, v2

    move/from16 v19, v4

    goto/16 :goto_a

    :cond_3
    const-string v12, "Exif"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v10, v12}, Lcom/motorola/camera/PermissionCallback;->hasByte([B[B)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v9, v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "%d:%s:[EXIF]:%d"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<html><head><style>.line{line-height: 0;}</style></head><body><h1>EXIF</h1>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, p0

    iget-object v6, v12, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast v6, Lcom/motorola/camera/photometadata/PhotoMetadata;

    iget-object v7, v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->mAttributes:Landroid/util/SparseArray;

    move v9, v2

    :goto_3
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v10

    const-string v13, "<br>"

    const-string v14, "     </div>"

    const-string v15, "<div style=\"text-align: right; float: right;\">"

    const-string v3, "</div>"

    const-string v2, "<div style=\"text-align: left; float: left;\">     "

    if-ge v9, v10, :cond_5

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v4

    move-object/from16 v4, v18

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v17, v9

    iget-object v9, v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v7, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v4, v14}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v17

    move-object/from16 v7, v18

    move/from16 v4, v19

    goto :goto_4

    :cond_4
    move/from16 v19, v4

    move-object/from16 v18, v7

    move/from16 v17, v9

    add-int/lit8 v9, v17, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    goto :goto_3

    :cond_5
    move/from16 v19, v4

    iget-object v4, v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    if-eqz v4, :cond_8

    const-string v4, "<h1>MakerNotes</h1>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v6, Lcom/motorola/camera/photometadata/PhotoMetadata;->mMotoMakerNotes:Lcom/motorola/camera/photometadata/MotMakerNotesParser;

    iget-object v6, v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v7, v9, :cond_7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    if-eqz v10, :cond_6

    move-object/from16 v17, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v2

    sget-object v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mLookup:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v10, v9}, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->getStringValue(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v17, v6

    const/4 v9, 0x0

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    const-string v2, "</body></html>"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->xml:Ljava/lang/String;

    move/from16 v16, v9

    goto/16 :goto_a

    :cond_9
    move-object/from16 v12, p0

    move/from16 v16, v2

    move/from16 v19, v4

    const-string v2, "JFIF"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v10, v2}, Lcom/motorola/camera/PermissionCallback;->hasByte([B[B)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d:%s:[JFIF]:%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    goto/16 :goto_a

    :cond_a
    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_ICC_APP2:[B

    invoke-static {v10, v2}, Lcom/motorola/camera/PermissionCallback;->hasByte([B[B)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d:%s:[ICC_PROFILE]:%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->xml:Ljava/lang/String;

    goto/16 :goto_a

    :cond_b
    sget-object v2, Lcom/motorola/camera/photometadata/PhotoMetadata;->IDENTIFIER_MPF_APP2:[B

    invoke-static {v10, v2}, Lcom/motorola/camera/PermissionCallback;->hasByte([B[B)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d:%s:[MPF]:%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    const/16 v2, 0x56

    if-ne v7, v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    aget-byte v3, v10, v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v9, v16

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "big:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v6, -0x1e

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "primary image size:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v6, -0x1a

    invoke-static {v10, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v9, v4}, Lcom/motorola/camera/PermissionCallback;->readInt(Z[B)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "primary image offset:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v6, -0x16

    invoke-static {v10, v7, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-static {v9, v5}, Lcom/motorola/camera/PermissionCallback;->readInt(Z[B)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v6, -0xe

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "secondary image size:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v6, -0xa

    invoke-static {v10, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v9, v4}, Lcom/motorola/camera/PermissionCallback;->readInt(Z[B)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "secondary image offset:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v6, -0x6

    invoke-static {v10, v7, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v9, v4}, Lcom/motorola/camera/PermissionCallback;->readInt(Z[B)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_d
    const-string v2, ""

    :goto_9
    iput-object v2, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->xml:Ljava/lang/String;

    goto :goto_a

    :cond_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d:%s:%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v11, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->xml:Ljava/lang/String;

    :goto_a
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    move/from16 v7, v16

    goto/16 :goto_c

    :cond_f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object/from16 v12, p0

    move/from16 v16, v2

    move/from16 v19, v4

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v5, v5, 0x40

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v5, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d:SOF%d:%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v9}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v9, :cond_10

    add-int/lit8 v7, v6, -0x3

    goto :goto_c

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid SOFx"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v12, p0

    move/from16 v16, v2

    move/from16 v19, v4

    new-array v2, v7, [B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v7, :cond_14

    new-instance v2, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d:COM:%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/photometadata/PhotoMetadataUtil$Section;->marker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :goto_c
    if-ltz v7, :cond_13

    invoke-virtual {v0, v7}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v7, :cond_12

    move/from16 v2, v16

    move/from16 v4, v19

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid JPEG segment"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_d
    return-object v1

    :cond_17
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid marker:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v2, v5, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x37
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x33
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerMcfMlStateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    return-void
.end method

.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/zzw;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/mlkit/vision/barcode/internal/zzh;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    return-object p0
.end method

.method public unlock()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "k"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    check-cast p2, Ljava/lang/Integer;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->Companion:Landroidx/collection/internal/Lock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->entryById:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    :cond_0
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->headerKind:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    return-void

    :cond_1
    const-string v0, "mv"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of p1, p2, [I

    if-eqz p1, :cond_5

    check-cast p2, [I

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->metadataVersionArray:[I

    return-void

    :cond_2
    const-string/jumbo v0, "xs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_5

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraString:Ljava/lang/String;

    return-void

    :cond_3
    const-string/jumbo v0, "xi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor;->extraInt:I

    return-void

    :cond_4
    const-string/jumbo p0, "pn"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_5

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    :cond_5
    return-void
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
    .locals 1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "d1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;I)V

    return-object p1

    :cond_0
    const-string v0, "d2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;I)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .locals 0

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 0

    return-void
.end method

.method public zza()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/PermissionCallback;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-interface {p0}, Lcom/google/android/play/core/splitinstall/internal/zzcb;->zza()Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Lcom/google/android/play/core/splitinstall/zzl;

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/zzac;

    .line 5
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/zzac;->zza:Landroid/content/Context;

    return-object p0

    .line 6
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/zzi;

    .line 7
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzi;->zza:Landroid/content/Context;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public zza()V
    .locals 7

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/testing/zzaa;

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zzb:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 9
    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "module"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    :cond_0
    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "errorCode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 13
    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/testing/zzaa;->zzc:Landroidx/sqlite/db/SimpleSQLiteQuery;

    .line 14
    sget-object v0, Lcom/google/android/play/core/splitinstall/model/zza;->zzc:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 15
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_4

    .line 16
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    return-void

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Property \"splitInstallErrorCodeByModule\" has not been set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " is unknown error."

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_6
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 22
    const-string v0, "\'split-install-error\' element does not contain \'module\'/\'errorCode\' attributes."

    invoke-direct {p0, v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0
.end method
