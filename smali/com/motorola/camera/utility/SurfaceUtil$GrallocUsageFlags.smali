.class public abstract enum Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

.field public static final Companion:Lcom/motorola/camera/utility/SurfaceUtil;

.field public static final enum DEFAULT:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;

.field public static final enum MTKG9X:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;

.field public static final enum QSM8250:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;

    invoke-direct {v0}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->DEFAULT:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$DEFAULT;

    new-instance v1, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;

    invoke-direct {v1}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;-><init>()V

    sput-object v1, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->MTKG9X:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$MTKG9X;

    new-instance v2, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;

    invoke-direct {v2}, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;-><init>()V

    sput-object v2, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->QSM8250:Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags$QSM8250;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->$VALUES:[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/motorola/camera/utility/SurfaceUtil;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->Companion:Lcom/motorola/camera/utility/SurfaceUtil;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;->$VALUES:[Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/SurfaceUtil$GrallocUsageFlags;

    return-object v0
.end method


# virtual methods
.method public abstract getUsage(ILcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)J
.end method
