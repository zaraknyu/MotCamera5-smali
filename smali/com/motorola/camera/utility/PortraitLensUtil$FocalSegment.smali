.class public abstract enum Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

.field public static final enum CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

.field public static final enum ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

.field public static final enum STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

.field public static final enum WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-direct {v0}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;-><init>()V

    sput-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    new-instance v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    invoke-direct {v1}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;-><init>()V

    sput-object v1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    new-instance v2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    invoke-direct {v2}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;-><init>()V

    sput-object v2, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    new-instance v3, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    invoke-direct {v3}, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;-><init>()V

    sput-object v3, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->$VALUES:[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->$VALUES:[Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;

    return-object v0
.end method


# virtual methods
.method public abstract getZoomSegment()Lcom/motorola/camera/utility/ZoomSegment;
.end method
