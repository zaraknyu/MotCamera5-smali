.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;


# instance fields
.field public final key:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    const/4 v1, 0x0

    const v2, 0x7f1204a2

    const-string v3, "EXTERNAL_DISPLAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    const/4 v2, 0x1

    const v3, 0x7f1204af

    const-string v4, "PHOTOS"

    invoke-direct {v1, v4, v2, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    const/4 v3, 0x2

    const v4, 0x7f1204d4

    const-string v5, "VIDEOS"

    invoke-direct {v2, v5, v3, v4}, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    const/4 v4, 0x3

    const v5, 0x7f1204aa

    const-string v6, "GENERAL"

    invoke-direct {v3, v6, v4, v5}, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    const/4 v5, 0x4

    const v6, 0x7f12047c

    const-string v7, "ABOUT"

    invoke-direct {v4, v7, v5, v6}, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;->key:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/CategoryModel;

    return-object v0
.end method
