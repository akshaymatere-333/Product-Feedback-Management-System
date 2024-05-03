// Get all dropdown toggle links
const dropdownToggles = document.querySelectorAll('.nav-link[data-bs-toggle="collapse"]');

// Add click event listener to each dropdown toggle link
dropdownToggles.forEach(toggle => {
  toggle.addEventListener('click', (event) => {
    event.preventDefault(); // Prevent the default link behavior

    // Get the target dropdown ID
    const targetDropdownId = toggle.getAttribute('href');

    // Close all open dropdowns
    const openDropdowns = document.querySelectorAll('.collapse.show');
    openDropdowns.forEach(dropdown => {
      const instance = bootstrap.Collapse.getInstance(dropdown);
      instance.hide();
    });

    // Toggle the target dropdown
    const targetDropdown = document.querySelector(targetDropdownId);
    const instance = bootstrap.Collapse.getInstance(targetDropdown);
    instance.toggle();
  });
});