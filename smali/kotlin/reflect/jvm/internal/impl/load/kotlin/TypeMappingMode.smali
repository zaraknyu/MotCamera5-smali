.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;


# instance fields
.field public final genericArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

.field public final genericContravariantArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

.field public final genericInvariantArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

.field public final isForAnnotationParameter:Z

.field public final kotlinCollectionsToJavaCollections:Z

.field public final mapTypeAliases:Z

.field public final needInlineClassWrapping:Z

.field public final needPrimitiveBoxing:Z

.field public final skipDeclarationSiteWildcards:Z

.field public final skipDeclarationSiteWildcardsIfPossible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    const/4 v9, 0x0

    const/16 v10, 0x3ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;-><init>(ZZZZZLkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;ZLkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;I)V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    const/16 v10, 0x3dc

    move-object v6, v0

    move-object v0, v1

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;-><init>(ZZZZZLkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;ZLkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    return-void
.end method

.method public constructor <init>(ZZZZZLkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;ZLkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;I)V
    .locals 3

    and-int/lit8 v0, p10, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p10, 0x2

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 v0, p10, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move p3, v2

    :cond_2
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_3

    move p4, v2

    :cond_3
    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_4

    move p5, v2

    :cond_4
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_5

    const/4 p6, 0x0

    :cond_5
    and-int/lit8 v0, p10, 0x40

    if-eqz v0, :cond_6

    move p7, v1

    :cond_6
    and-int/lit16 v0, p10, 0x80

    if-eqz v0, :cond_7

    move-object p8, p6

    :cond_7
    and-int/lit16 v0, p10, 0x100

    if-eqz v0, :cond_8

    move-object p9, p6

    :cond_8
    and-int/lit16 p10, p10, 0x200

    if-eqz p10, :cond_9

    move v1, v2

    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->needPrimitiveBoxing:Z

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->needInlineClassWrapping:Z

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->isForAnnotationParameter:Z

    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->skipDeclarationSiteWildcards:Z

    iput-boolean p5, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->skipDeclarationSiteWildcardsIfPossible:Z

    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->genericArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    iput-boolean p7, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->kotlinCollectionsToJavaCollections:Z

    iput-object p8, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->genericContravariantArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    iput-object p9, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->genericInvariantArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->mapTypeAliases:Z

    return-void
.end method
