##  Utilisation de `Factory` pour la gestion des dépendances :

-  **Facilite l’injection de dépendances**  
  → Permet d’obtenir une instance sans instancier manuellement un `HTTPClient`.

-  **Permet le Mocking et le remplacement de l’implémentation**  
  → On peut facilement remplacer `HTTPClient()` par un **Mock** pour les tests.

-  **Gère automatiquement la création et le cycle de vie des objets**  
  → `Factory` peut gérer **des singletons**, des instances temporaires, etc.
