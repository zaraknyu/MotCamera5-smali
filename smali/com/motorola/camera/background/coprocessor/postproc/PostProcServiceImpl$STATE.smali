.class public final enum Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

.field public static final enum DEINITIALIZED:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

.field public static final enum INITIALIZED:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;->INITIALIZED:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    new-instance v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    const-string v2, "DEINITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;->DEINITIALIZED:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    filled-new-array {v0, v1}, [Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;->$VALUES:[Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;->$VALUES:[Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$STATE;

    return-object v0
.end method
