.class public final enum Lcom/motorola/camera/shared/Util$ConfigFile;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/Util$ConfigFile;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/shared/Util$ConfigFile;

    const-string v1, "AppFeatures"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0}, [Lcom/motorola/camera/shared/Util$ConfigFile;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/Util$ConfigFile;->$VALUES:[Lcom/motorola/camera/shared/Util$ConfigFile;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/Util$ConfigFile;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/Util$ConfigFile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/Util$ConfigFile;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/Util$ConfigFile;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/Util$ConfigFile;->$VALUES:[Lcom/motorola/camera/shared/Util$ConfigFile;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/Util$ConfigFile;

    return-object v0
.end method
