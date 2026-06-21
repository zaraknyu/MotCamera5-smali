.class public final Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$Companion;


# instance fields
.field public final jobContext:Ljava/lang/String;

.field public final resultsContext:Ljava/lang/String;

.field public final status:Lcom/motorola/camera/background/common/ReturnCode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v1, v1, v0}, [Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->$childSerializers:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)V
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$$serializer;

    invoke-virtual {p0}, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/Platform_commonKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/motorola/camera/background/common/ReturnCode;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DONE"

    iput-object v0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;

    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    iget-object p1, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", resultsContext="

    const-string v1, ", status="

    const-string v2, "Params(jobContext="

    iget-object v3, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->jobContext:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->resultsContext:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobComplete$Companion$Params;->status:Lcom/motorola/camera/background/common/ReturnCode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
