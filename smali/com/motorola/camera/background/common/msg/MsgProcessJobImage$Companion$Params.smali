.class public final Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;


# instance fields
.field public final algContext:Ljava/lang/String;

.field public final appContext:Ljava/lang/String;

.field public final expedited:Z

.field public final priority:Lcom/motorola/camera/background/common/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->Companion:Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v1, v1, v0, v1}, [Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->$childSerializers:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;Z)V
    .locals 2

    and-int/lit8 v0, p1, 0xf

    const/16 v1, 0xf

    if-ne v1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    iput-boolean p5, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->expedited:Z

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$$serializer;->INSTANCE:Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$$serializer;

    invoke-virtual {p0}, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/Platform_commonKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/background/common/Priority;Z)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "priority"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    .line 5
    iput-boolean p4, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->expedited:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;

    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    iget-object v3, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    iget-object v3, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->expedited:Z

    iget-boolean p1, p1, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->expedited:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->expedited:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", algContext="

    const-string v1, ", priority="

    const-string v2, "Params(appContext="

    iget-object v3, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->appContext:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->algContext:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->priority:Lcom/motorola/camera/background/common/Priority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expedited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/background/common/msg/MsgProcessJobImage$Companion$Params;->expedited:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
