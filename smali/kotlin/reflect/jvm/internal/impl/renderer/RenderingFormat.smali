.class public abstract enum Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;

.field public static final enum HTML:Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat$HTML;

.field public static final enum PLAIN:Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat$PLAIN;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat$PLAIN;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat$PLAIN;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;->PLAIN:Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat$PLAIN;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat$HTML;

    invoke-direct {v1}, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat$HTML;-><init>()V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;->HTML:Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat$HTML;

    filled-new-array {v0, v1}, [Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/renderer/RenderingFormat;

    return-object v0
.end method


# virtual methods
.method public abstract escape(Ljava/lang/String;)Ljava/lang/String;
.end method
