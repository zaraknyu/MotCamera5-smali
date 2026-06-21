.class public final enum Lcom/motorola/camera/background/common/RegisteredProcDef;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public static final enum CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public static final Companion:Lokio/Timeout;

.field public static final enum POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public static final enum PROCESS_MANAGER_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public static final enum SAVE_IMAGE_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

.field public static final map:Ljava/util/LinkedHashMap;


# instance fields
.field public final givenName:Ljava/lang/String;

.field public final id:I

.field public final type:Lcom/motorola/camera/background/common/ClientType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/motorola/camera/background/common/RegisteredProcDef;

    sget-object v6, Lcom/motorola/camera/background/common/ClientType;->CLIENT_BOTH:Lcom/motorola/camera/background/common/ClientType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "Unknown"

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/common/RegisteredProcDef;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V

    new-instance v1, Lcom/motorola/camera/background/common/RegisteredProcDef;

    const/4 v4, 0x0

    const-string v5, "ProcessManager_Service"

    const-string v2, "PROCESS_MANAGER_SERVICE"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/RegisteredProcDef;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V

    move-object v7, v1

    sput-object v7, Lcom/motorola/camera/background/common/RegisteredProcDef;->PROCESS_MANAGER_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    new-instance v1, Lcom/motorola/camera/background/common/RegisteredProcDef;

    const/4 v4, 0x1

    const-string v5, "Camera5_App"

    const-string v2, "CAMERA_APP"

    const/4 v3, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/RegisteredProcDef;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V

    move-object v8, v1

    sput-object v8, Lcom/motorola/camera/background/common/RegisteredProcDef;->CAMERA_APP:Lcom/motorola/camera/background/common/RegisteredProcDef;

    new-instance v1, Lcom/motorola/camera/background/common/RegisteredProcDef;

    const/4 v4, 0x2

    const-string v5, "SaveImage_Service"

    const-string v2, "SAVE_IMAGE_SERVICE"

    const/4 v3, 0x3

    invoke-direct/range {v1 .. v6}, Lcom/motorola/camera/background/common/RegisteredProcDef;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V

    sput-object v1, Lcom/motorola/camera/background/common/RegisteredProcDef;->SAVE_IMAGE_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    new-instance v9, Lcom/motorola/camera/background/common/RegisteredProcDef;

    const-string v13, "PostProcess_Service"

    sget-object v14, Lcom/motorola/camera/background/common/ClientType;->COPROC:Lcom/motorola/camera/background/common/ClientType;

    const-string v10, "POST_PROCESS_SERVICE"

    const/4 v11, 0x4

    const/4 v12, 0x3

    invoke-direct/range {v9 .. v14}, Lcom/motorola/camera/background/common/RegisteredProcDef;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V

    sput-object v9, Lcom/motorola/camera/background/common/RegisteredProcDef;->POST_PROCESS_SERVICE:Lcom/motorola/camera/background/common/RegisteredProcDef;

    filled-new-array {v0, v7, v8, v1, v9}, [Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->$VALUES:[Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lokio/Timeout;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lokio/Timeout;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->Companion:Lokio/Timeout;

    invoke-static {}, Lcom/motorola/camera/background/common/RegisteredProcDef;->values()[Lcom/motorola/camera/background/common/RegisteredProcDef;

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget v5, v4, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/motorola/camera/background/common/RegisteredProcDef;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/motorola/camera/background/common/ClientType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->id:I

    iput-object p4, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->givenName:Ljava/lang/String;

    iput-object p5, p0, Lcom/motorola/camera/background/common/RegisteredProcDef;->type:Lcom/motorola/camera/background/common/ClientType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/RegisteredProcDef;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/RegisteredProcDef;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/RegisteredProcDef;->$VALUES:[Lcom/motorola/camera/background/common/RegisteredProcDef;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/RegisteredProcDef;

    return-object v0
.end method
