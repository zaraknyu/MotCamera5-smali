.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedStaticVisibility;
.super Landroidx/appcompat/view/ActionMode;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedStaticVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedStaticVisibility;

    const-string/jumbo v1, "protected_static"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/ActionMode;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedStaticVisibility;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedStaticVisibility;

    return-void
.end method


# virtual methods
.method public final getInternalDisplayName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "protected/*protected static*/"

    return-object p0
.end method

.method public final normalize()Landroidx/appcompat/view/ActionMode;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;

    return-object p0
.end method
