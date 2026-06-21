.class public final enum Lkotlinx/serialization/json/ClassDiscriminatorMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lkotlinx/serialization/json/ClassDiscriminatorMode;

.field public static final enum NONE:Lkotlinx/serialization/json/ClassDiscriminatorMode;

.field public static final enum POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->NONE:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    new-instance v1, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    const-string v2, "ALL_JSON_OBJECTS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    const-string v3, "POLYMORPHIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    filled-new-array {v0, v1, v2}, [Lkotlinx/serialization/json/ClassDiscriminatorMode;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->$VALUES:[Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/serialization/json/ClassDiscriminatorMode;
    .locals 1

    const-class v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    return-object p0
.end method

.method public static values()[Lkotlinx/serialization/json/ClassDiscriminatorMode;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/ClassDiscriminatorMode;->$VALUES:[Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/json/ClassDiscriminatorMode;

    return-object v0
.end method
