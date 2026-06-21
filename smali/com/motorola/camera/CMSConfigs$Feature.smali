.class public final enum Lcom/motorola/camera/CMSConfigs$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/CMSConfigs$Feature;

.field public static final enum PIP_PHOTO:Lcom/motorola/camera/CMSConfigs$Feature;

.field public static final enum PIP_VIDEO:Lcom/motorola/camera/CMSConfigs$Feature;

.field public static final enum VIDEO_BOKEH:Lcom/motorola/camera/CMSConfigs$Feature;

.field public static final enum VIDEO_MIRROR:Lcom/motorola/camera/CMSConfigs$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/CMSConfigs$Feature;

    const-string v1, "PIP_PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/CMSConfigs$Feature;->PIP_PHOTO:Lcom/motorola/camera/CMSConfigs$Feature;

    new-instance v1, Lcom/motorola/camera/CMSConfigs$Feature;

    const-string v2, "PIP_VIDEO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/CMSConfigs$Feature;->PIP_VIDEO:Lcom/motorola/camera/CMSConfigs$Feature;

    new-instance v2, Lcom/motorola/camera/CMSConfigs$Feature;

    const-string v3, "VIDEO_BOKEH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/CMSConfigs$Feature;->VIDEO_BOKEH:Lcom/motorola/camera/CMSConfigs$Feature;

    new-instance v3, Lcom/motorola/camera/CMSConfigs$Feature;

    const-string v4, "VIDEO_MIRROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/CMSConfigs$Feature;->VIDEO_MIRROR:Lcom/motorola/camera/CMSConfigs$Feature;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/CMSConfigs$Feature;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/CMSConfigs$Feature;->$VALUES:[Lcom/motorola/camera/CMSConfigs$Feature;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/CMSConfigs$Feature;
    .locals 1

    const-class v0, Lcom/motorola/camera/CMSConfigs$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/CMSConfigs$Feature;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/CMSConfigs$Feature;
    .locals 1

    sget-object v0, Lcom/motorola/camera/CMSConfigs$Feature;->$VALUES:[Lcom/motorola/camera/CMSConfigs$Feature;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/CMSConfigs$Feature;

    return-object v0
.end method
