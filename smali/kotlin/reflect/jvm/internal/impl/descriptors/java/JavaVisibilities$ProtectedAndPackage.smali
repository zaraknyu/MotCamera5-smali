.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedAndPackage;
.super Landroidx/appcompat/view/ActionMode;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedAndPackage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedAndPackage;

    const-string/jumbo v1, "protected_and_package"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/ActionMode;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedAndPackage;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/java/JavaVisibilities$ProtectedAndPackage;

    return-void
.end method


# virtual methods
.method public final compareTo(Landroidx/appcompat/view/ActionMode;)Ljava/lang/Integer;
    .locals 1

    const-string/jumbo v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Internal;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->ORDERED_VISIBILITIES:Lkotlin/collections/builders/MapBuilder;

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Private;

    if-eq p1, p0, :cond_3

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$PrivateToThis;

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getInternalDisplayName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "protected/*protected and package*/"

    return-object p0
.end method

.method public final normalize()Landroidx/appcompat/view/ActionMode;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$Protected;

    return-object p0
.end method
